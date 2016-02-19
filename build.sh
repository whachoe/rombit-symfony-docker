#!/bin/sh
cd fpm && \
docker build -t whachoe/rombit-fpm . && \
cd ../nginx && \
docker build -t whachoe/rombit-nginx . && \
docker push whachoe/rombit-fpm && \
docker push whachoe/rombit-nginx 
