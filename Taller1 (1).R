#Taller

#Datarfames
planetas <- c("Mercurio", "Venus", "Tierra", "Marte", "Jupiter", "Saturno", "Urano", "Neptuno")
tipo <- c("solido", "solido", "solido", "solido", "gas", "gas", "gas", "gas")
diametro <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotacion <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)

anillos <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

planetas_df <- data.frame(planetas, tipo, diametro, rotacion, anillos)
planetas_df

# 1) Cree fila de promedios para datos no nominales en el conjunto de datos de los planetas
planetas_df$diametro
mean(planetas_df$diametro)
mean(planetas_df$rotacion)

# 2) Muestre los datos de los planetas que tienen anillos

planetas_df$planetas[anillos]

# 3) Realice grafica de barras de planetas con anillos

conAnillos <- planetas_df$planetas[anillos] # Planetas con anillos

filtroDiametro <- planetas == conAnillos # Filtro para diametro
filtroDiametro
diametro <- planetas_df$diametro[filtroDiametro] # Diametro de planetas con diametros

barplot(diametro, names.arg = conAnillos, ylim = c(0,12))
#hist(diametro, main = "Planetas con anillos", ylim=c(0,20), col = "blue")

# Tomar datos de los registros mtcars

mtcars
dim(mtcars)

# 4) Encontrar valores de tendencia central para la columna de aceleracion

# Media
mtcars$qsec
media <- mean(mtcars$qsec)
media
# Mediana
mediana <- median(mtcars$qsec)
mediana
# Moda
carb <- table(mtcars$qsec)
sort(carb, decreasing = TRUE)

# 5) Listar vehiculos mayores a la media
mtcars
mtcars$qsec > media
mtcars$qsec
filtroMedia <- mtcars$qsec > media
filtroMedia
mtcars$qsec[filtroMedia]
namescars <- row.names(mtcars)
namescars
namescars[filtroDiametro]

# 8) Mostrar la caja de bigotes para la variable aceleracion


boxplot(mtcars$qsec)

#Descargar archivo de base de datos de futbol
englan_1718 <- read.csv("http://www.football-data.co.uk/mmz4281/1718/E0.csv")
englan_1718
str(englan_1718)

boxplot(englan_1718$FTHG)
boxplot(englan_1718$FTAG)

# Media

mediaF <- mean(englan_1718$FTHG)
mediaF
# Mediana
medianaf <- median(englan_1718$FTHG)
medianaf
# Moda
goalsh <- table(englan_1718$FTHG)
sort(goalsh, decreasing = TRUE)

# Media

mediaF <- mean(englan_1718$FTAG)
mediaF
# Mediana7
medianaf <- median(englan_1718$FTAG)
medianaf
# Moda
goalsh <- table(englan_1718$FTAG)
sort(goalsh, decreasing = TRUE)


#ejerciocio 1
nota <- c(7.4, 7.9, 4.1, 8.1, 6.2, 7.1, 7.4, 6.7)
mediaej1 <- mean(nota)
mediaej1
medianaej1 <- median(nota)
medianaej1
moda <- table(nota)
sort(moda, decreasing = TRUE)
boxplot(nota)


#ejercicio2
cuidad <- c("boston","atlanta","miami","new york", "orlando","pitsburgh","washington dc")
tarifa <- c(43,35,34,58,30,30,36)

renta <- data.frame(cuidad,tarifa)
renta
plot(renta)
mediarenta <- mean(renta$tarifa)
mediarenta
medianarenta <- median(renta$tarifa)
medianarenta
modarenta <-table(renta$tarifa)
sort(modarenta, decreasing = TRUE)
boxplot(renta$tarifa)
