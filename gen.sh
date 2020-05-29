#!/usr/bin/env bash

ssh-keygen -o -a 100 -t ed25519 -f id_ed25519 -C "private_key_leak_demo_ed25519"
ssh-keygen -o -a 100 -t rsa -f id_rsa -C "private_key_leak_demo_rsa"
ssh-keygen -o -a 100 -t ecdsa -f id_ecdsa -C "private_key_leak_demo_ecdsa"
ssh-keygen -o -a 100 -t dsa -f id_dsa -C "private_key_leak_demo_dsa"

# openssl_1.1.1g
openssl ecparam -genkey -name SM2 -out sm2.key
openssl ecparam -genkey -name secp256k1 -out secp256k1.key
openssl ecparam -genkey -name secp256r1 -out secp256r1.key
openssl genrsa -out rsa_1024.key 1024
openssl genrsa -out rsa_2048.key 2048
openssl genrsa -out rsa_4096.key 4096
