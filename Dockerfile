FROM jboss/wildfly
ADD tasks-*.war /opt/jboss/wildfly/standalone/deployments/
