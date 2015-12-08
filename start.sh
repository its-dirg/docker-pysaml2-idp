#!/bin/sh

# copy volume mounted config
cp ${DATA_DIR:?"Need to set DATA_DIR non-empty"}/* .

# generate SAML metadata
make_metadata.py idp_conf.py > ${DATA_DIR}/idp.xml

# start the IdP
exec ./idp.py idp_conf
