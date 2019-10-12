#!/usr/bin/env python3
# import errno
import os,sys
import json
import sh

notify_send = None
notmuch = None


def instance_already_running():
    try:
        sh.pgrep("gmi")
        sh.pgrep("notmuch")
        return True
    except sh.ErrorReturnCode_1:
        pass


def sync_with_gmail():
    global notify_send
    try:
        print("gmi syncing")
        os.chdir(os.path.expanduser("~/.mail/gmail_gmi"))
        output = str(sh.Command("gmi")("sync"))
        print(output)
    except sh.ErrorReturnCode_1:
        print("error syncing mbsync")
        notify_send("Error syncing mbsync")


def sync_with_fastmail():
    global notify_send
    try:
        print("fastmail syncing")
        output = str(sh.Command("mbsync")("-a"))
        print(output)
    except sh.ErrorReturnCode_1:
        print("error syncing gmi")
        notify_send("Error syncing gmi")


def sync_with_muchsync():
    global notify_send
    try:
        print("muchsync syncing")
        muchsync = sh.Command("muchsync")
        output = str(muchsync("HPE"))
        print(output)
    except sh.ErrorReturnCode_1:
        print("error syncing with HPE")
        notify_send("Error syncing HPE")

def notify_new():
    global notify_send, notmuch

    notmuch_search = notmuch.bake("search", "--format=json")
    output = str(notmuch_search("tag:new", "and", "tag:unread", "and", "tag:inbox"))
    output = json.loads(output)

    print("Notifying...")
    for message in output:
        message_to_send = "%s: %s" % (message["authors"], message["subject"])
        notify_send("New mail", message_to_send)

def prepare_commands():
    notify_send_cmd = sh.Command("notify-send")
    notify_send_cmd = notify_send_cmd.bake("--icon==gtk-info")
    notmuch_cmd = sh.Command("notmuch")
    return notify_send_cmd, notmuch_cmd

def init_tags():
    global notmuch
    print("Initial tagging...")
    new_env = os.environ.copy()
    new_env["XAPIAN_CJK_NGRAM"] = "1"
    notmuch("new", _env=new_env)
    afew = sh.Command("afew")
    afew("-t", "-n")


def finish_tags():
    global notmuch
    print("Finishing tagging...")
    notmuch("tag", "-new", "--", "tag:new")


def main():
    global notify_send, notmuch
    if instance_already_running():
        print("Other instance is running")
        return
    notify_send, notmuch = prepare_commands()

    do_gmi = False
    print(sys.argv)
    if len(sys.argv) == 2 and sys.argv[1] == "--do-gmi":
        do_gmi = True

    if do_gmi:
        # sync_with_gmail()
        sync_with_fastmail()
    init_tags()
    notify_new()
    finish_tags()
    # sync_with_muchsync()

if __name__ == '__main__':
    main()


