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
    if len(sys.argv) == 2 and sys.argv[1] == "--do-gmi":
        print("gmi syncing")
        do_gmi = True
    notify_send = sh.Command("notify-send")
    if do_gmi:
        try:
            os.chdir(os.path.expanduser("~/.mail/gmail_gmi"))
            sh.Command("gmi")("sync")
        except sh.ErrorReturnCode_1:
            print("error syncing gmi")
            notify_send("Error syncing gmi")

    notmuch = sh.Command("notmuch")
    notmuch_search = notmuch.bake("search", "--format=json")
    output = str(notmuch_search("tag:new", "and", "tag:inbox"))
    output = json.loads(output)
    for message in output:
        message_to_send = "%s: %s" % (message["authors"], message["subject"])
        notify_send("New mail", message_to_send)
    notmuch("tag", "-new", "--", "tag:new")

if __name__ == '__main__':
    main()


