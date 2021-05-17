# -*- coding: utf-8 -*-
# Programa: Leitura_De_Arquivos.R
# Programador: Fabio Batista Rodrigues
# Data: 14/05/2021
# Este programa tem como objetivo abrir um arquivo CSV e responder as descritas
# ao longo do codigo.

# Download do arquivo Zip
dados <- download.file('https://d396qusza40orc.cloudfront.net/rprog/data/quiz1_data.zip', destfile = "dataset.zip")
# Descompactar arquvio
dados <- unzip("dataset.zip")
# Ler o dataframe e armazenar em uma variavel
dados <- read.csv("hw1_data.csv")
# Mostrar o nome das colunas
names(dados)
# Mostrar as 2 Primeiras linhas do arquivo (O print é opcional) 
print(dados[1:2,])
# Mostrar o numero de linhas do arquivo
nrow(dados)
# Mostrar as duas ultimas linhas (sem o print)
dados[152:153,]
# Mostrar o que esta na linha 47 da coluna "Ozone"
dados$Ozone[47]
# Obs: Usamos o $ para localizar objetos especificos
# Quandos valores estao faltando na coluna "Ozone"
my_na <- is.na(dados$Ozone)
sum(my_na)
# Poderia ser sum(is.na(dados$Ozone))
# Qual a media da coluna Ozone tirando os valores ausentes
Ozone <- dados$Ozone
mean(Ozone, na.rm = TRUE)
# Poderia ser mean(dados$Ozone, na.rm = TRUE)
# Extrair a media de Solar.R dos subconjuntos Ozone e Temp
Ozone_Temp_Acima <- which(dados$Ozone > 31 & dados$Temp > 90)
# Usar esse intervalo para usar em Solar.R
Intervalo_Solar <- dados[Ozone_Temp_Acima,]
# Exibir media da coluna Solar.R com base no subconjunto Intervalo_Solar
mean(Intervalo_Solar$Solar.R)
# Obs: Poderia fazer apenas:
# mean(dados[which(dados$Ozone >31 & dados$Temp > 90),]$Solar.R)
# Qual é a média de "Temp" quando "Month" é igual a 6? 
mean(dados[which(dados$Month == 6),]$Temp)
# Qual foi o valor máximo do ozônio no mês de maio (ou seja, mês é igual a 5)?
max(dados[which(dados$Month == 5),]$Ozone, na.rm = TRUE)
                    
                    