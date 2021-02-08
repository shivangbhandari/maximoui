FROM ibmcom/websphere-liberty:19.0.0.4-kernel-ubi-min
COPY --chown=1001:0 MaximoServerConfig/apps/maximo-x.war /config/apps/
COPY --chown=1001:0 MaximoServerConfig/apps/maximoui.war /config/apps/
COPY --chown=1001:0 MaximoServerConfig/server.xml /config/
COPY --chown=1001:0 MaximoServerConfig/jvm.options /config/
RUN configure.sh