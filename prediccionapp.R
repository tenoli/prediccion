#Funcion de prediccion



predapp <- function(data){
    
    resultado <- data.frame(Clave = as.character(), 
                            Actitud = as.double(), 
                            Potencial = as.double(),
                            stringsAsFactors = FALSE)
    
    for (i in 1:nrow(data)){

      
        a <- 0
        pa <- 0

        #Suma y ponderacion potencial
        p <- 0
        pp <- 0
      
        #Actitud
        #Pregunta 6
        if (data[i,3] == "a"){
          a <- a + 0
          pa <- pa + 2
        }
        else if (data[i,3] == "b"){
          a <- a + 2
          pa <- pa + 2
        }
  
        #Pregunta 7
        if (data[i,4] == "a"){
          a <- a + 0
          pa <- pa + 3
        }
        else if (data[i,4] == "b"){
          a <- a + 1.5
          pa <- pa + 3
        }
        else if (data[i,4] == "c"){
          a <- a + 3
          pa <- pa + 3
        }
      
        #Pregunta 8
        if (data[i,5] == "a"){
          a <- a + 0
          pa <- pa + 2
        }
        else if (data[i,5] == "b"){
          a <- a + 1
          pa <- pa + 2
        }
        else if (data[i,5] == "c"){
          a <- a + 2
          pa <- pa + 2
        }
      
        #Pregunta 9
        if (data[i,6] == "a"){
          a <- a + 0
          pa <- pa + 1
        }
        else if (data[i,6] == "b"){
          a <- a + 0.5
          pa <- pa + 1
        }
        else if (data[i,6] == "c"){
          a <- a + 1
          pa <- pa + 1
        }
      
        #Pregunta 10
        if (data[i,7] == "a"){
          a <- a - 0.5
          pa <- pa + 2
        }
        else if (data[i,7] == "b"){
          a <- a + 1
          pa <- pa + 2
        }
        else if (data[i,7] == "c"){
          a <- a + 2
          pa <- pa + 2
        }
      
        #Pregunta 11
        if (data[i,8] == "a"){
          a <- a - 2
          pa <- pa + 2
        }
        else if (data[i,8] == "b"){
          a <- a + 0
          pa <- pa + 2
        }
        else if (data[i,8] == "c"){
          a <- a + 2
          pa <- pa + 2
        }
      
        #Pregunta 12
        if (data[i,9] == "a"){
          a <- a - 1
          pa <- pa + 2
        }
        else if (data[i,9] == "b"){
          a <- a + 1
          pa <- pa + 2
        }
        else if (data[i,9] == "c"){
          a <- a + 2
          pa <- pa + 2
        }
      
        #Pregunta 13
        if (data[i,10] == "a"){
          a <- a + 0
          pa <- pa + 2
        }
        else if (data[i,10] == "b"){
          a <- a + 1
          pa <- pa + 2
        }
        else if (data[i,10] == "c"){
          a <- a + 2
          pa <- pa + 2
        }
      
        #Pregunta 14
        if (data[i,11] == "a"){
          a <- a + 0
          pa <- pa + 2
        }
        else if (data[i,11] == "b"){
          a <- a + 1
          pa <- pa + 2
        }
        else if (data[i,11] == "c"){
          a <- a + 2
          pa <- pa + 2
        }
      
        #Pregunta 15
        if (data[i,12] == "a"){
          a <- a + 0
          pa <- pa + 2
        }
        else if (data[i,12] == "b"){
          a <- a + 1
          pa <- pa + 2
        }
        else if (data[i,12] == "c"){
          a <- a + 2
          pa <- pa + 2
        }

        #Potencial
        #Pregunta 16
        if (data[i,13] == "a"){
          p <- p + 0
          pp <- pp + 2
        }
        else if (data[i,13] == "b"){
          p <- p + 1
          pp <- pp + 2
        }
        else if (data[i,13] == "c"){
          p <- p + 2
          pp <- pp + 2
        }

        #Pregunta 17
        if (data[i,14] == "a"){
          p <- p + 2
          pp <- pp + 2
        }
        else if (data[i,14] == "b"){
          p <- p + 1.5
          pp <- pp + 2
        }
        else if (data[i,14] == "c"){
          p <- p + 0
          pp <- pp + 2
        }

        #Pregunta 18
        if (data[i,15] == "a"){
          p <- p + 0
          pp <- pp + 2
        }
        else if (data[i,15] == "b"){
          p <- p + 1
          pp <- pp + 2
        }
        else if (data[i,15] == "c"){
          p <- p + 2
          pp <- pp + 2
        }

        #Pregunta 19
        if (data[i,16] == "a"){
          p <- p + 0
          pp <- pp + 1
        }
        else if (data[i,16] == "b"){
          p <- p + 0.5
          pp <- pp + 1
        }
        else if (data[i,16] == "c"){
          p <- p + 1
          pp <- pp + 1
        }

        #Pregunta 20
        if (data[i,17] == "a"){
          p <- p + 0
          pp <- pp + 1
        }
        else if (data[i,17] == "b"){
          p <- p + 0.5
          pp <- pp + 1
        }
        else if (data[i,17] == "c"){
          p <- p + 1
          pp <- pp + 1
        }

         #Pregunta 21
        if (data[i,18] == "a"){
          p <- p + 0
          pp <- pp + 2
        }
        else if (data[i,18] == "b"){
          p <- p + 1
          pp <- pp + 2
        }
        else if (data[i,18] == "c"){
          p <- p + 2
          pp <- pp + 2
        }

         #Pregunta 22
        if (data[i,19] == "a"){
          p <- p + 0
          pp <- pp + 1
        }
        else if (data[i,19] == "b"){
          p <- p + 0.5
          pp <- pp + 1
        }
        else if (data[i,19] == "c"){
          p <- p + 1
          pp <- pp + 1
        }

         #Pregunta 23
        if (data[i,20] == "a"){
          p <- p + 0
          pp <- pp + 1
        }
        else if (data[i,20] == "b"){
          p <- p + 0.5
          pp <- pp + 1
        }
        else if (data[i,20] == "c"){
          p <- p + 1
          pp <- pp + 1
        }

         #Pregunta 24
        if (data[i,21] == "a"){
          p <- p  - 1
          pp <- pp + 1
        }
        else if (data[i,21] == "b"){
          p <- p + 0
          pp <- pp + 1
        }
        else if (data[i,21] == "c"){
          p <- p + 1
          pp <- pp + 1
        }

      
      #Generar Actitud
      ra <- a/pa

      #Generar potencial
      rp <- p/pp

      #Agregar a base resultados
      resultado[i,] <- c(data[i,2],round(ra,2),round(rp,2))

    }
    
    #CSV
    return(as.data.frame(resultado))
  
}
