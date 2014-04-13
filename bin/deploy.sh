#!/bin/bash
set -o nounset
set -o errexit
 
NFLAG=""
 
while getopts ":n" opt; do
  case $opt in
    n)
      NFLAG="-n"
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done
 
# Set the environment by loading from the file "environment" in the same directory
DIR="$( cd "$( dirname $( dirname "$0" ) )" && pwd)"
# source "$DIR/.env"
DEPLOY_SOURCE_DIR="out/"
DEPLOY_DEST_DIR="~/httpdocs"
DEPLOY_SERVER="athena.webgrid.ro"
DEPLOY_ACCOUNT="mignisca"
 
echo "Deploying ${DIR}/${DEPLOY_SOURCE_DIR} to ${DEPLOY_ACCOUNT}@${DEPLOY_SERVER}:${DEPLOY_DEST_DIR}"

docpad clean 
docpad generate --env static
chmod -R og+Xr out
rsync $NFLAG -rvzp --delete --exclude-from="$DIR/.deployignore" "${DIR}/${DEPLOY_SOURCE_DIR}" "${DEPLOY_ACCOUNT}@${DEPLOY_SERVER}:${DEPLOY_DEST_DIR}" --rsh='ssh -p54876'
