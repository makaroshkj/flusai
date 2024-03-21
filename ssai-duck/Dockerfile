FROM ubuntu:20.04 
RUN apt update && apt install -y \
    wget \
&&  wget https://github.com/tsduck/tsduck/releases/download/v3.16-1110/tsduck_3.16-1110_amd64.deb \
&& apt install -y krb5-locales libasn1-8-heimdal libbrotli1 libcurl4 libgssapi-krb5-2 libgssapi3-heimdal libhcrypto4-heimdal libheimbase1-heimdal libheimntlm0-heimdal libhx509-5-heimdal libk5crypto3 libkeyutils1 libkrb5-26-heimdal libkrb5-3 libkrb5support0 libldap-2.4-2 libldap-common libnghttp2-14 libpcsclite1 libroken18-heimdal librtmp1 libsasl2-2 libsasl2-modules libsasl2-modules-db libsqlite3-0 libssh-4 libwind0-heimdal \
&& dpkg -i tsduck_3.16-1110_amd64.deb
