#! /bin/sh

LINK_NAME="target"

if [ -z "$1" ] ; then
  echo "Usage: $0 target_dir" 1>&2
  exit 1
fi
target_dir="$1"

rm -f ${LINK_NAME}

echo "ln -s ${target_dir} ${LINK_NAME}" 1>&2
ln -s ${target_dir} ${LINK_NAME}
