#!/usr/bin/env python3
import os
import platform
import json
from urllib import request
from pyftpdlib.authorizers import DummyAuthorizer
from pyftpdlib.handlers import FTPHandler
from pyftpdlib.servers import FTPServer
import configparser

IS_BEHIND_NAT = False
if platform.node() == "pi_yangsheng":
    IS_BEHIND_NAT = True
USERNAME = "user"
PASSWORD = "12345"

def parseConfig():
    global USERNAME, PASSWORD
    config = configparser.ConfigParser()
    try:
        config_file = os.path.expandvars("${XDG_CONFIG_HOME}/my_ftp.conf")
        config.read(config_file)
        USERNAME = config['DEFAULT']['user']
        PASSWORD = config['DEFAULT']['password']
    except:
        pass


def main():
    parseConfig()

    # Instantiate a dummy authorizer for managing 'virtual' users
    authorizer = DummyAuthorizer()

    # Define a new user having full r/w permissions and a read-only
    # anonymous user
    authorizer.add_user(USERNAME, PASSWORD, '.', perm='elradfmwM')
    # authorizer.add_anonymous(os.getcwd())

    # Instantiate FTP handler class
    handler = FTPHandler
    handler.authorizer = authorizer

    # Define a customized banner (string returned when client connects)
    handler.banner = "pyftpdlib based ftpd ready."

    # Specify a masquerade address and the range of ports to use for
    # passive connections.  Decomment in case you're behind a NAT.
    if IS_BEHIND_NAT:
        # handler.masquerade_address = 'yangsheng6810.dynamic-dns.net'
        # handler.masquerade_address = '100.15.134.196'
        str_response = request.urlopen('http://httpbin.org/ip').read().decode('utf-8')
        my_ip = json.loads(str_response)['origin']
        handler.masquerade_address = my_ip
        handler.passive_ports = range(60000, 61000)

    # Instantiate FTP server class and listen on 0.0.0.0:2121
    address = ('', 2121)
    server = FTPServer(address, handler)

    # set a limit for connections
    server.max_cons = 256
    server.max_cons_per_ip = 20

    # start ftp server
    server.serve_forever()


if __name__ == '__main__':
    main()
