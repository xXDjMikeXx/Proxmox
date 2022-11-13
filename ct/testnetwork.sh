function msg_ok() {
  local msg="$1"
  echo -e "${BFR} ${CM} ${GN}${msg}${CL}"
}


if nc -zw1 8.8.8.8 443; then msg_ok "Internet Connected"; else
   msg_error "Internet NOT Connected"
   exit 1
 fi
