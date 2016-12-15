#Leemos los datos 
data <- read_csv("*.csv", col_names = TRUE)


#Creamos funcion de prediccion
pred <- function(data){
    
    resultado <- data.frame(Clave = as.character(), 
                            Actitud = as.double(), stringsAsFactors = FALSE)
    
    for (i in 1:nrow(data)){
      
      a <- 0
      p <- 20
      
        #Pregunta 6
        if (data[i,3] == "a"){
          a <- a + 0
        }
        else if (data[i,3] == "b"){
          a <- a + 2
        }
  
        #Pregunta 7
        if (data[i,4] == "a"){
          a <- a + 0
        }
        else if (data[i,4] == "b"){
          a <- a + 1.5
        }
        else if (data[i,4] == "c"){
          a <- a + 3
        }
      
        #Pregunta 8
        if (data[i,5] == "a"){
          a <- a + 0
        }
        else if (data[i,5] == "b"){
          a <- a + 1
        }
        else if (data[i,5] == "c"){
          a <- a + 2
        }
      
        #Pregunta 9
        if (data[i,6] == "a"){
          a <- a + 0
        }
        else if (data[i,6] == "b"){
          a <- a + 0.5
        }
        else if (data[i,6] == "c"){
          a <- a + 1
        }
      
        #Pregunta 10
        if (data[i,7] == "a"){
          a <- a - 0.5
        }
        else if (data[i,7] == "b"){
          a <- a + 1
        }
        else if (data[i,7] == "c"){
          a <- a + 2
        }
      
        #Pregunta 11
        if (data[i,8] == "a"){
          a <- a - 2
        }
        else if (data[i,8] == "b"){
          a <- a + 0
        }
        else if (data[i,8] == "c"){
          a <- a + 2
        }
      
        #Pregunta 12
        if (data[i,9] == "a"){
          a <- a - 1
        }
        else if (data[i,9] == "b"){
          a <- a + 1
        }
        else if (data[i,9] == "c"){
          a <- a + 2
        }
      
        #Pregunta 13
        if (data[i,10] == "a"){
          a <- a + 0
        }
        else if (data[i,10] == "b"){
          a <- a + 1
        }
        else if (data[i,10] == "c"){
          a <- a + 2
        }
      
        #Pregunta 14
        if (data[i,11] == "a"){
          a <- a + 0
        }
        else if (data[i,11] == "b"){
          a <- a + 1
        }
        else if (data[i,11] == "c"){
          a <- a + 2
        }
      
        #Pregunta 15
        if (data[i,12] == "a"){
          a <- a + 0
        }
        else if (data[i,12] == "b"){
          a <- a + 1
        }
        else if (data[i,12] == "c"){
          a <- a + 2
        }
      r <- a/p
      c <- data[i,2]
      resultado[i,] <- c(c,r)
    }
  return(write.csv(resultado, "actitud.csv", row.names = FALSE))
  
}

pred(data)
