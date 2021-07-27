#Host ${server}
#  Hostname ${hostname}
#  Port ${port}
# User ${user}`


# ssh -TN -v 
#templates
debug= '-vvv -N -T'
R="-T -R"
L="-T -L"
D="-D"

global = '0.0.0.0'
global_2222 = ${global}:2222

"-R localhost:443:0.0.0.0:3443"

"-R ${global_2222}:${global_ssh}"

strapi_forward= `-R ${local}:1337:${global}:1337`

#-L :0.0.0.0:1337 ${server}


#root@ittps.ru -N -vvv

# ssh -T -R 0.0.0.0:22:0.0.0.0:3322 root@89.110.43.247 -vvv -N curl -G https://tp.ittps.ru/webhook

