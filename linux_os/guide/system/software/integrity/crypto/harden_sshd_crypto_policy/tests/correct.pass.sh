#!/bin/bash
# platform = multi_platform_fedora,Red Hat Enterprise Linux 8
# profiles = xccdf_org.ssgproject.content_profile_ospp

configfile=/etc/crypto-policies/back-ends/opensshserver.config

echo "CRYPTO_POLICY='-oCiphers=aes256-ctr,aes128-ctr,aes256-cbc,aes128-cbc -oMACs=hmac-sha2-512,hmac-sha2-256 -oGSSAPIKeyExchange=no -oKexAlgorithms=ecdh-sha2-nistp521,ecdh-sha2-nistp384,ecdh-sha2-nistp256,diffie-hellman-group14-sha1 -oHostKeyAlgorithms=ssh-rsa,ecdsa-sha2-nistp384,ecdsa-sha2-nistp256 -oPubkeyAcceptedKeyTypes=rsa-sha2-512,rsa-sha2-256,ssh-rsa,ecdsa-sha2-nistp384,ecdsa-sha2-nistp256'" > "$configfile"

