#EXAMEN FINAL

# Problema 4

#Instrucciones: Dadas dos secuencias del mismo tamaño encontrar un "score de alineamiento" entre ellas, por ejemplo, si coinciden dos nucleótidos entre ellas sumar un punto al score y si difieren restar -1, por ejemplo, con 

#GAGCCTACTAACGGGAT
#CATCGTAATGACGGCCT
#El score es -1+1-1+1 + ...1 = 10

#Cargar libreria para secuencias
library(Biostrings)
##Cargar secuencias
sec1 <- as.character("GAGCCTACTAACGGGAT")
sec2 <- as.character("CATCGTAATGACGGCCT")
#Comparar secuencias
compareStrings(sec1,sec2)

width(sec1) #nos dice que tan largas son
width(sec2)

#Se resta al total las diferencias
diferencias<- 17-7
#Aqui se define el score
score<-funcion(){
  diference<-7*(-1)
  coincidencia<-diferencias*1
  Score<-diference+coincidencia
  return(print(paste("El score es de")))
}