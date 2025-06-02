
# 1. Exploración de datos
df_sinUSA <- df[1:51,]
USA <- df[52,]

# Suma de la columna 'TotalC2010' para todos los estados
sum(df_sinUSA$TotalC2010)
USA[,7]

# Selección de columnas numéricas y cálculo de totales
estados_numerico <- df_sinUSA %>% select_if(is.numeric)
total_estados <- apply(estados_numerico, 2, sum, na.rm = TRUE)

#Extrae columnas numéricas de la fila 'USA'
USA_num <- USA %>% select_if(is.numeric)

# Combina los totales de los estados con los datos nacionales (USA)
combinar <- rbind(total_estados, USA_num)
