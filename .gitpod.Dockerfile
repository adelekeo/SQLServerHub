FROM gitpod/workspace-full

USER root
RUN apt-get update && apt-get install -y mssql-tools unixodbc-dev
ENV PATH="$PATH:/opt/mssql-tools/bin"
