#!/bin/bash

echo 'Iniciando Script'
echo 'Criando diretórios'
mkdir publico
mkdir adm
mkdir ven
mkdir sec


echo 'Criando grupos'
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo 'Criando usuarios' 
echo 'Criando usuarios ADM' 
useradd carlos -G GRP_ADM
useradd maria -G GRP_ADM
useradd joao -G GRP_ADM

echo 'Criando usuarios VEN'
useradd debora -G GRP_VEN
useradd sebastiana -G GRP_VEN
useradd roberto -G GRP_VEN

echo 'Criando usuarios SEC'
useradd josefina -G GRP_SEC
useradd amanda -G GRP_SEC 
useradd rogerio -G GRP_SEC


echo 'Modificando Propriedades e Permissões' 
echo 'procedimento: Alt. Propriedade do dir. publico' 
chown root publico

echo 'procedimento: Alt. Propriedade do dir. adm' 
chown root:GRP_ADM adm

echo 'procedimento: Alt. Propriedade do dir. ven' 
chown root:GRP_VEN ven

echo 'procedimento: Alt. Propriedade do dir. sec'
chown root:GRP_SEC sec

echo 'procedimento: Alt. Permissão do dir. publico' 
chmod 777 publico

echo 'procedimento: Alt. Permissão do dir. adm' 
chmod 770 adm

echo 'procedimento: Alt. Permissão do dir. ven' 
chmod 770 ven

echo 'procedimento: Alt. Permissão do dir. sec' 
chmod 770 sec 

echo 'Fim script!'
