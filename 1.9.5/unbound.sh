#!/usr/bin/env bash

set -euf -o pipefail

exec /opt/unbound/sbin/unbound -ddd -c /opt/unbound/etc/unbound/unbound.conf
