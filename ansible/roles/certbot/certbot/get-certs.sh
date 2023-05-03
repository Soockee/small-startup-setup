#!/usr/bin/env bash 

set -x 

certbot certonly \
	--quiet \
	--agree-tos \
	--email gamingsockee@gmail.com \
	--dns-linode \
	--dns-linode-credentials /root/certbot/credentials.ini \
	--dns-linode-propagation-seconds 1000 \
	--domain '*.stockhause.info'

