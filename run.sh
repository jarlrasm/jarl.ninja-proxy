#!/bin/sh

certbot certonly -n --standalone -d jarl.ninja --agree-tos --email jarl@jarl.ninja

nginx -g "daemon off;"
