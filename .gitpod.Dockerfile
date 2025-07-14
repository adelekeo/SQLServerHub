FROM gitpod/workspace-full

USER root

# Install Microsoft SQL Server tools
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
  && curl https://packages.microsoft.com/config/ubuntu/22.04/prod.list > /etc/apt/sources.list.d/mssql-release.list \
  && apt-get update \
  && ACCEPT_EULA=Y apt-get install -y msodbcsql18 mssql-tools18 unixodbc-dev \
  && echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.bashrc \
  && echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.zshrc

ENV PATH="$PATH:/opt/mssql-tools18/bin"
