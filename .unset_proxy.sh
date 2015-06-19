unset HTTP_PROXY
unset HTTPS_PROXY
unset http_proxy
unset https_proxy

export http_proxy=
export https_proxy=
export ftp_proxy=

export HTTP_PROXY=
export HTTPS_PROXY=
export FTP_PROXY=

npm config delete http-proxy
npm config delete https-proxy
npm config delete proxy
