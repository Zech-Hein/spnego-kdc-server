# This is the Kerberos KDC Server
FROM gcavalcante8808/krb5-server
COPY docker-entrypoint.sh /
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/docker-entrypoint.sh"]