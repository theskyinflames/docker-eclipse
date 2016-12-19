#!/bin/bash

cd /tmp/ 

echo 'Downloading eclipse...'
curl http://mirror.ibcp.fr/pub/eclipse//technology/epp/downloads/release/neon/1a/eclipse-jee-neon-1a-linux-gtk-x86_64.tar.gz -o ./eclipse.tar.gz

echo 'Installing eclipse...' 
tar -xzvf /tmp/eclipse.tar.gz -C /opt && rm /tmp/eclipse.tar.gz

