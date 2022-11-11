FROM mcr.microsoft.com/mssql/server

WORKDIR /usr/src/app

COPY . /usr/src/app

ENV SA_PASSWORD mypassdev85!
ENV ACCEPT_EULA Y
ENV MSSQL_PID Express

EXPOSE 1433

CMD /bin/bash ./configpoint.sh