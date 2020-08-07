#!/bin/bash

# start vs code server
code-server --host 0.0.0.0 --port 80 --auth password --user-data-dir /home/coder/project/.code-user-data --disable-telemetry &

# start sshd
/usr/sbin/sshd -D &

# just keep this script running
while [[ true ]]; do
	sleep 1
done