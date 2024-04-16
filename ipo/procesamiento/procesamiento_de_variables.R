#Procesamiento de variables
#llamada de paquetes
install.packages("pacman")
pacman::p_load(dplyr, sjmisc, car, sjlabelled, stargazer, haven)
#Cargar Base de Datos
lapopchi2023 <- read_dta("ipo/input/data-orig/lapopchile2023.dta", encoding = "UTF-8")
head(lapopchi2023)
dim(lapopchi2023)
#Selección de variables
proc_data <- lapopchi2023 %>% select(b37, # Confianza en los medios de comunicación 
                                     immig1xa, #Actitud a Servicios Sociales a Venezolanos
                                     immig1xb, #Actitud a Servicios Sociales a Inmigrantes
                                     immig1xc, #Actitud a Servicios Sociales a Españoles
                                     comcon3xa, #Actitud a tener vecinos Venezolanos
                                     comcon3xb, #Actitud a tener vecinos Inmigrantes
                                     comcon3xc) #Actitud a tener vecinos Españoles
sjlabelled::get_label(proc_data)
#Procesamiento de variables
#a) Descriptivo general
frq(proc_data$b37)
frq(proc_data$immig1xa) #Mayor valor representa mayor desacuerdo, creo que sería mejor cambiarle el orden
