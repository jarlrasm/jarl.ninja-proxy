#!/bin/sh

certbot certonly -n --standalone -d jarl.ninja -d www.jarl.ninja --agree-tos --email jarl@jarl.ninja --reinstall

nginx -g "daemon off;"
