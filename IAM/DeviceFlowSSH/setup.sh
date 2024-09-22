#!/usr/bin/env bash

sed -i 's/@include common-auth/#@include common-auth\nauth required deviceflow.so/' /etc/pam.d/sshd
sed -i 's/@include common-password/#@include common-password/'  /etc/pam.d/sshd
sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/' /etc/ssh/sshd_config
cp ./deviceflow.so /lib/security
