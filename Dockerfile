# This is the Kerberos KDC Server
FROM gcavalcante8808/krb5-server
COPY docker-entrypoint.sh /
ENTRYPOINT ["/sbin/tini", "--"]
RUN ["chmod", "+x", "/docker-entrypoint.sh"]
CMD ["/docker-entrypoint.sh"]