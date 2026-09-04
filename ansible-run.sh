#!/bin/bash

# $1 value can be the ip address or the dns name of the server we wish to connect to

set -e

HOST="$1"
TOOL="$2"

# shellcheck disable=SC2296
ansible-playbook -i "${HOST}", \
    tool-setup.yml -e ansible_user=ec2-user \
    -e ansible_password=DevOps321 \
    -e tool_name="${TOOL}"