#!/bin/bash

arq=$(mktemp)
wget -q http://loterias.caixa.gov.br/wps/portal/loterias/landing/megasena/ -O $arq 
cat $arq | grep 'class="numbers mega-sena"' | sed 's/.*<ul class="numbers mega-sena">//g ; s/<li>//g ; s/<\/li>/ /g'
