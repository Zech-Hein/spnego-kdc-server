# spnego-kdc-server

This repo provides the dockerfile setup for a containerized KDC server to be used for SPNEGO and kerberos authentication testing.

This repo is solely for testing purposes. Use at your own risk.


#Build the docker image using podman
`podman build -t spnego-kdc-server:1.0 .`

#Run the docker image
`podman run -d --name krb5-server -e KRB5_REALM=EXAMPLE.COM -e KRB5_KDC=localhost -e KRB5_PASS=password spnego-kdc-server:1.0`