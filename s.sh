#!/bin/bash


echo "                     "
sudo apt-get install apt-transport-https wget gnupg2
sudo apt-get update

sudo apt-key adv --fetch-keys https://download.opensuse.org/repositories/home:/scylladb:/scylla-3rdparty-stretch/Debian_9.0/Release.key
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 17723034C56D4B19

sudo wget -O /etc/apt/sources.list.d/scylla.list http://repositories.scylladb.com/scylla/repo/6d3359d3-510d-4818-977b-3cc71b929db8/debian/scylladb-2.3-stretch.list

sudo apt-get update
sudo apt-get install scylla
