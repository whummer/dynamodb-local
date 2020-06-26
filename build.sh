#!/bin/bash

test -e dynamodb_local_latest.zip || \
  wget https://s3-us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_latest.zip

# prepare contents
mkdir -p build
cp dynamodb_local_latest.zip build/
(cd build; unzip dynamodb_local_latest.zip; rm dynamodb_local_latest.zip)
cp etc/libsqlite4java-linux-amd64.so build/DynamoDBLocal_lib/

# create zip file
(cd build; zip -r DynamoDBLocal.zip *)
