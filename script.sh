#!/bin/bash

echo "Diretórios:"

mkdir /adm
mkdir /ven
mkdir /sec
mkdir /public

echo "Grupos:"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Usuários:"

echo "ADM"
useradd leonardo -m -s /bin/bash -p $(openssl passwd -crypt Mudar123)
useradd jorge 	 -m -s /bin/bash -p $(openssl passwd -crypt Mudar123)
useradd junior	 -m -s /bin/bash -p $(openssl passwd -crypt Mudar123)

echo "VEN"
useradd lilian	 -m -s /bin/bash -p $(openssl passwd -crypt Mudar123)
useradd bernardo -m -s /bin/bash -p $(openssl passwd -crypt Mudar123)
useradd lucia	 -m -s /bin/bash -p $(openssl passwd -crypt Mudar123)

echo "SEC"
useradd andressa -m -s /bin/bash -p $(openssl passwd -crypt Mudar123)
useradd carolina -m -s /bin/bash -p $(openssl passwd -crypt Mudar123)
useradd nara	 -m -s /bin/bash -p $(openssl passwd -crypt Mudar123)

echo "Permissões:"

chown root:GRP_ADM /adm
chown root:GRP_VEV /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public




















