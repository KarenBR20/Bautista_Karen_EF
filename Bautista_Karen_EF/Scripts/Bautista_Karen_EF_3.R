#Examen Final
#Problema 3
#Instrucciones: Usa funciones y ciclo while para pedirle al usuario una secuencia de tres nucleótidos y que genere
#1. El aminoácido correspondiente
#2. La secuencia complementaria

#1. Aminoacido correspondiente
codon <- function(){
  
  codons <- readline(prompt = paste("Escribe un codon: "))
  amino <- as.character(codons)
  
  if (amino =="GGG" | amino =="GGT" | amino =="GGA" | amino =="GGG"){
    print(paste("El aminoacido es G"))
  }else if (amino == "TTT" | amino =="TTC"){
    print(paste("El aminoacido es F"))
  }else if(amino =="TTA" | amino =="TTG" | amino =="CTT" | amino =="CTC" |
             amino =="CTA" | amino =="CTG"){
    print(paste("El aminoacido es L"))
  }else if(amino =="TCT" | amino =="TCC" |amino =="TCA" | amino =="TCG" |
            amino =="AGT" | amino =="AGC"){
    print(paste("El aminoacido es S"))
  }else if(amino =="TAT" | amino =="TAC" ){
    print(paste("El aminoacido es Y"))
  }else if(amino =="TGT" | amino =="TGC"){
    print(paste("El aminoacido es C"))
  }else if(amino =="TGG"){
    print(paste("El aminoacido es W"))
  }else if( amino =="CCT" | amino =="CCC" |amino =="CCA"){
    print(paste("El aminoacido es P"))
  }else if(amino =="CAT" | amino =="CAC"){
    print(paste("El aminoacido es H"))
  }else if( amino =="CAA" | amino =="CAG"){
    print(paste("El aminoacido es Q"))
  }else if( amino =="CGT" | amino =="CGC"  | amino=="CGA" | amino=="CGG" | 
            amino =="AGA" | amino =="AGG"){
    print(paste("El aminoacido es R"))
  }else if( amino =="ATT" | amino =="ATC"  | amino =="ATA" ){
    print(paste("El aminoacido es I"))
  }else if(amino =="ATG"){
    print(paste("El aminoacido es M"))
  }else if(amino =="ACT"| amino =="ACC"  | amino =="ACA" | amino =="ACG" ){
    print(paste("El aminoacido es T"))
  }else if( amino =="AAT" | amino =="AAC" ){
    print(paste("El aminoacido es N"))
  }else if( amino =="AAA" | amino =="AAG" ){
    print(paste("El aminoacido es K"))
  }else if( amino =="GTT" | amino =="GTC"  | amino =="GTA" | amino =="GTG" ){
    print(paste("El aminoacido es V"))
  }else if( amino =="GCT" | amino =="GCC" | amino =="GCA" | amino =="GCG" ){
    print(paste("El aminoacido es A"))
  }else if( amino =="GAT" | amino =="GAC" ){
    print(paste("El aminoacido es D"))
  }else if( amino =="GAA" | amino =="GAG" ){
    print(paste("El aminoacido es E"))
  }else if( amino =="TAA" | amino =="TAG" | amino =="TAG"){
    print(paste("El aminoacido es *"))
  }
 
#Secuencia complementaria
secuencia <- as.character(amino)
secuencia1 <-as.character()
secuencia2 <-as.character()
secuencia3 <-as.character()
    if (amino == "A"){
      secuencia1 <- as.character("T")
    }else if (amino == as.character("T")){
      secuencia2 <- as.character("A")
    }else if (amino == as.character("G")){
      secuencia3 <- as.character("C")
    }else if ( amino == as.character("C")) {
      secuencia <- as.character("G")
    }
  print(paste("La secuencia complementaria es ", secuencia1,secuencia2,secuencia3))
}


