echo | for i in ssl3 tls1_2 tls1_1 tls1 dtls1 ; do echo Trying $i; openssl s_client -connect 10.213.181.72:1414 -${i} ; done > x 2>&1
grep -e "^Trying\|^Secure\|certificate"  x
