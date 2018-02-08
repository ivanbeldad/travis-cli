#!/bin/sh

auth=0
auth_system=""

if [ "$GITHUB_TOKEN" != "" ]
then
  travis login --github-token $GITHUB_TOKEN
  auth=1
  auth_system="Github token"
fi

if [ "$auth" = 0 ]
then
  echo
  echo "No valid login provided"
  echo
  exit 1
else
  username=`travis whoami`
  if [ "$username" = "" ]
  then
    echo
    echo "Invalid credentials. Exiting."
    echo
    exit 1
  fi
  echo
  echo "User logged as $username using $auth_system authentication"
  echo
fi

travis "$@"

exit 0
