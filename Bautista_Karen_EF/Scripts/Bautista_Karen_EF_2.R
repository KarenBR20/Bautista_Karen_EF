#EXAMEN FINAL
#Problema 2
#Instrucciones:Escribe un programa en R que contenga una función que, a partir de dos secuencias FASTA, determine lo siguiente. En cada uno de los casos debe mandar un mensaje.
#1. Si las secuencias tienen o no el mismo tamaño
#2. El porcentaje de GC de cada una de ellas y las compare.
#3. La distancia de Hamming entre las primeras N letras en donde N es la longitud de la secuencia más pequeña. 

#Cargar libreria para secuencias
library(Biostrings)

#Cargar secuencias
raspberry<-readDNAStringSet("https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/raspberry_bushy_dwarf_virus_uid14791/NC_003740.fna")
strawberry<-readDNAStringSet("https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/strawberry_latent_ringspot_virus_satellite_rna_uid15155/NC_003848.fna")

#1. Tamaño de secuencias
seq<-c(raspberry,strawberry) #concatenado de ambas secuencias

size<- function(){ #Esta es una funcion que calculara con width el tamaño de cada secuencia
  t1<-width(raspberry)
  t2<-width(strawberry)
if(t1==t2){ #El if es para comparar si, despues de obtener su tamaños, ambos son iguales o no
    print("Son iguales") #Si son iguales saldra este mensaje
  }else {print("No son iguales") #Si no son iguales saldra este mensaje
}
}

#2. El porcentaje de GC de cada una de ellas y las compare.
porcentaje<- function(){
  one <- letterFrequency(raspberry, c("CG"), as.prob = T)#frecuencia de GC para raspberry
  two <- letterFrequency(strawberry, c("CG"), as.prob = T)#frecuencia de GC para strawberry
  if(one==two){
    print("Son iguales los porcentajes")
  }else{print("No son iguales los porcentajes")} #Se compara si las frecuencias de GC son iguales
  
  return(print(paste("La frecuencia de GC en raspberry es", one,".",
                     
                     "La frecuencia de GC en strawberry es", two)))
}

#3. La distancia de Hamming entre las primeras N letras en donde N es la longitud de la secuencia mas pequeña. 
Hamming <- function() {
  dif<-(width(raspberry)!= width(strawberry))
  dh<-dif/width(strawberry)
  return(print(paste("La distancia de Hamming es",dh)))
}

