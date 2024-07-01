#!/bin/bash

rm arcolinux_repo_testing*

echo "repo-add"
repo-add -s -n -R arcolinux_repo_testing.db.tar.gz *.pkg.tar.zst

sleep 1

rm arcolinux_repo_testing.db
rm arcolinux_repo_testing.db.sig

rm arcolinux_repo_testing.files
rm arcolinux_repo_testing.files.sig

mv arcolinux_repo_testing.db.tar.gz arcolinux_repo_testing.db
mv arcolinux_repo_testing.db.tar.gz.sig arcolinux_repo_testing.db.sig

mv arcolinux_repo_testing.files.tar.gz arcolinux_repo_testing.files
mv arcolinux_repo_testing.files.tar.gz.sig arcolinux_repo_testing.files.sig

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
