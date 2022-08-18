#!/bin/bash


echo "${AKDEV_PASSWORD}" | sudo passwd akdev --stdin

exec /sbin/init
