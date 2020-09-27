#!/usr/bin/env bash

## Adding ssl support ##################################
keytool -keystore etc/keystore \
        -alias rundeckssl \
        -genkey -keyalg RSA \
        -keypass adminadmin \
        -storepass adminadmin \
        -dname "C=test, S=stgo, OU= rundeck, L=stgo, O=cst, CN=rundeck"

cp etc/keystore etc/truststore

########################################################
