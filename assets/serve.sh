#!/bin/bash

declare -r __FILENAME="$(realpath "${0}")"
declare -r __DIRNAME="${__FILENAME%/*}"
declare -r SERV_DIR="${__DIRNAME%/*}/dist"
declare -r -i DEFAULT_PORT=8080
declare -r DEFAULT_ADDRESS="0.0.0.0"

declare -i i port="${DEFAULT_PORT}"
declare address="${DEFAULT_ADDRESS}"

# code
function usage () {
  printf "Usage: %s [(--port -p) PORT=%d]" \
    "${0}" \
    "${DEFAULT_PORT}"
  exit "${1}"
}

function open_url () {
  local -r url="http://${address}:${port}"
  echo "Open browser to ${url}"
  xdg-open "${url}"
}

while [ $# -ne 0 ]; do
  i=1
  case "${1}" in
    "-p" | "--port")
      port="${2}"
      (( i++ ))
      ;;
    "-b" | "--bind")
      address="${2}"
      (( i++ ))
      ;;
    *)
      usage 1
  esac
  shift "${i}"
done

echo "Serve ${SERV_DIR}"
python3 -m http.server \
  -d "${SERV_DIR}" \
  -b "${address}" \
  "${port}" &
trap "kill $!" SIGINT
if [ "${address}" = "${DEFAULT_ADDRESS}" ]; then
  address="localhost"
fi
open_url
wait
