#!/usr/bin/env python3
import errno
import sh
import sys
import json

def main():
    notmuch = sh.Command("notmuch")
    notify_send = sh.Command("notify-send")
    notmuch_search = notmuch.bake("search", "--format=json")
    output = str(notmuch_search("tag:new", "and", "tag:inbox"))
    output = json.loads(output)
    for message in output:
        message_to_send = "%s: %s" % (message["authors"], message["subject"])
        notify_send("New mail", message_to_send)
    notmuch("tag", "-new", "--", "tag:new")

if __name__ == '__main__':
    main()


