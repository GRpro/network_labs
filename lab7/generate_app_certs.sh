cert_name_app1="tulip.zone08.edu"
cert_name_app2="srv-08.zone08.edu"

cd ./apps/generated_certs

openssl req -new -nodes -out $cert_name_app1.csr -newkey rsa:2048 -keyout $cert_name_app1.key
openssl x509 -req -in $cert_name_app1.csr -CA rootCA.pem -CAkey rootCA.key -CAcreateserial -out $cert_name_app1.crt -days 500 -sha256 -extfile ../app1.ext
openssl pkcs12 -inkey $cert_name_app1.key -in $cert_name_app1.crt -export -out $cert_name_app1.edu.pfx

cp $cert_name_app1.crt ../certs/$cert_name_app1.crt
cp $cert_name_app1.key ../certs/$cert_name_app1.key

openssl req -new -nodes -out $cert_name_app2.csr -newkey rsa:2048 -keyout $cert_name_app2.key
openssl x509 -req -in $cert_name_app2.csr -CA rootCA.pem -CAkey rootCA.key -CAcreateserial -out $cert_name_app2.crt -days 500 -sha256 -extfile ../app2.ext
openssl pkcs12 -inkey $cert_name_app2.key -in $cert_name_app2.crt -export -out $cert_name_app2.edu.pfx

cp $cert_name_app2.crt ../certs/$cert_name_app2.crt
cp $cert_name_app2.key ../certs/$cert_name_app2.key
