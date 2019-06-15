#!/usr/bin/env python3
import errno
import sh
import os,sys
import json

def instance_already_running():
    try:
        sh.pgrep("gmi")
        sh.pgrep("notmuch")
        return True
    except sh.ErrorReturnCode_1:
        pass


def main():
    if instance_already_running():
        print("Other instance is running")
        return
    do_gmi = False
    print(sys.argv)
    if len(sys.argv) == 2 and sys.argv[1] == "--do-gmi":
        do_gmi = True
    notify_send = sh.Command("notify-send")
    notify_send = notify_send.bake("--icon==gtk-info")
    if do_gmi:
        try:
            print("gmi syncing")
            os.chdir(os.path.expanduser("~/.mail/gmail_gmi"))
            output = str(sh.Command("gmi")("sync"))
            print(output)
        except sh.ErrorReturnCode_1:
            print("error syncing gmi")
            notify_send("Error syncing gmi")

    print("Initial tagging...")
    notmuch = sh.Command("notmuch")
    new_env = os.environ.copy()
    new_env["XAPIAN_CJK_NGRAM"] = "1"
    notmuch("new", _env=new_env)
    afew = sh.Command("afew")
    afew("-t", "-n")
    notmuch_search = notmuch.bake("search", "--format=json")
    output = str(notmuch_search("tag:new", "and", "tag:unread", "and", "tag:inbox"))
    output = json.loads(output)
    print("Notifying...")
    for message in output:
        message_to_send = "%s: %s" % (message["authors"], message["subject"])
        notify_send("New mail", message_to_send)
    print("Finishing tagging...")
    notmuch("tag", "-new", "--", "tag:new")

if __name__ == '__main__':
    main()


