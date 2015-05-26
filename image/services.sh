#!/bin/bash
set -e
source /build/buildconfig
set -x

## Installing spamassassin and spampd
$minimal_apt_get_install spamassassin

## Setting up spamd
mkdir /etc/service/spamd
cp /build/runit/spamd /etc/service/spamd/run