function xmkcert () {
  DOMAIN_NAME=$(echo $1 | cut -d "." -f 1)

  if [ -d "$CERTS_FOLDER/$DOMAIN_NAME" ]; then
      echo "Domain folder found"
  else
      echo "Domain folder not found"
      mkdir "$CERTS_FOLDER/$DOMAIN_NAME"
      mkcert -key-file "$CERTS_FOLDER/$DOMAIN_NAME/nginx-selfsigned.key" -cert-file "$CERTS_FOLDER/$DOMAIN_NAME/nginx-selfsigned.crt" "test" "$DOMAIN_NAME.test"
  fi
}
