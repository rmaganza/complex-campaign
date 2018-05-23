#AGGREGAZIONE CATEGORIE 

library(dplyr)
#PETS  (PRIMO LIVELLO DI AGGREGAZIONE)
visualization = View(data.frame(colnames(df)))

df$categories_pets <- df$categories_pets + df$categories_birds + df$categories_dogs+ df$categories_animalwelfare+ df$categories_zoo
df <- df %>% select (-c(categories_birds,categories_dogs,categories_animalwelfare, categories_zoo))


#SPORTS  (SECONDO LIVELLO DI AGGREGAZIONE)
#NB: sports che è il primo strato di aggregazione contiene tutti gli articoli visti la cui categoria non è contemplata tra quelle proposte

#Autoracing (per ora le lasciamo separate, si tratta di un'azienda di automotive)
#df$categories_autoracing <- df$categories_autoracing+ df$categories_formula1 + df$categories_rally + df$categories_nascar
#df <- df %>% select (-c(categories_formula1,categories_rally,categories_nascar))

#Bicycling
df$categories_bicycling <- df$categories_bicycling+ df$categories_trackracing + df$categories_mountainbiking
df <- df %>% select (-c(categories_trackracing,categories_mountainbiking))

#Climbing
df$categories_climbing <- df$categories_climbing+ df$categories_mountainclimbing + df$categories_rockclimbing
df <- df %>% select (-c(categories_mountainclimbing,categories_rockclimbing))

#Fishing
df$categories_fishing <- df$categories_fishing + df$categories_sportfishing+ df$categories_underwaterfishing + df$categories_flyfishing + df$categories_freshwaterfishing+ df$categories_saltwaterfishing
df <- df %>% select (-c(categories_sportfishing,categories_underwaterfishing +categories_flyfishing + categories_freshwaterfishing+ categories_saltwaterfishing))

#Gymnastic
df$categories_gymnastics <- df$categories_gymnastics + df$categories_artisticgymnastics+ df$categories_callisthenics 
df <- df %>% select (-c(categories_artisticgymnastics,categories_callisthenics))

#Hockey
df$categories_hockey <- df$categories_hockey + df$categories_fieldhockey+ df$categories_icehockey + df$categories_rollhockey 
df <- df %>% select (-c(categories_fieldhockey,categories_icehockey ,categories_rollhockey ))

#Hunting/shooting
df$categories_huntingshooting <- df$categories_huntingshooting + df$categories_skeetshooting+ df$categories_targetshooting 
df <- df %>% select (-c(categories_skeetshooting,categories_targetshooting ))


#Martial arts
df$categories_martialarts <- df$categories_martialarts+ df$categories_judo+ df$categories_karate + df$categories_sumo
df <- df %>% select (-c(categories_judo,categories_karate ,categories_sumo ))

#Moto gp andrebbe aggregato a motorcycling, per ora però lo lascio così

#Paralympic anche lo lascio così

#Skating
df$categories_skating <-df$categories_skating + df$categories_figureskating+ df$categories_inlineskating+ df$categories_iceskating + df$categories_rollerskating
df <- df %>% select (-c(categories_figureskating,categories_inlineskating ,categories_iceskating, categories_rollerskating ))

#Skiing
df$categories_skiing <-df$categories_skiing + df$categories_downhillskiing+ df$categories_nordicskiing
df <- df %>% select (-c(categories_downhillskiing,categories_nordicskiing ))

#Swimming
df$categories_swimming <-df$categories_swimming +df$categories_synchronizedswimming 
df <- df %>% select (-c(categories_synchronizedswimming ))

#Volley ball and beach volley li lascio così


#STYLE AND FASHION

#Cosmetic
df$categories_cosmetics <-df$categories_cosmetics +df$categories_cosmeticsformen
df <- df %>% select (-c(categories_cosmeticsformen ))

#Underwear
df$categories_underwear <-df$categories_underwear +df$categories_mensunderwear
df <- df %>% select (-c(categories_mensunderwear ))

#Beauty
df$categories_beauty <- df$categories_beauty + df$categories_gym+ df$categories_cosmetics + df$categories_beautycentre+ df$categories_haircare +df$categories_perfume +df$categories_tattoos
df <- df %>% select (-c(categories_gym,categories_cosmetics, categories_beautycentre+ categories_haircare + categories_perfume + categories_tattoos))



#SCIENCE

#Zoology
df$categories_zoology <- df$categories_zoology+df$categories_breeding+ df$categories_endangeredspecies+ df$categories_ethology + df$categories_ichthyology+ df$categories_ornithology 
df <- df %>% select (-c(categories_breeding,categories_endangeredspecies, categories_ethology, categories_ichthyology ,categories_ornithology ))

#Biology
df$categories_biology <- df$categories_biology+df$categories_biotechnology+ df$categories_botany+ df$categories_cytology+ df$categories_marinebiology+ df$categories_molecularbiology +df$categories_zoology
df <- df %>% select (-c(categories_biotechnology,categories_botany, categories_cytology, categories_marinebiology ,categories_molecularbiology , categories_zoology ))

#Chemistry
df$categories_chemistry <- df$categories_chemistry+df$categories_inorganicchemistry+ df$categories_organicchemistry
df <- df %>% select (-c(categories_inorganicchemistry,categories_organicchemistry))

#Ecology
df$categories_ecology <- df$categories_ecology+df$categories_pollution+ df$categories_wastemanagement+ df$categories_wastedisposal+ df$categories_recycling + df$categories_environmentaldisaster
df <- df %>% select (-c(categories_pollution,categories_wastemanagement, categories_wastedisposal, categories_recycling, categories_environmentaldisaster))

#Geography
df$categories_geography <- df$categories_geography+ df$categories_cartography+df$categories_hydrography+ df$categories_topography
df <- df %>% select (-c(categories_cartography,categories_hydrography, categories_topography))

#Geology
df$categories_geology <- df$categories_geology+ df$categories_mineralogy+df$categories_seismology+ df$categories_earthquakes + df$categories_volcanology + df$categories_volcaniceruptions
df <- df %>% select (-c(categories_mineralogy,categories_seismology, categories_earthquakes, categories_volcanology, categories_volcaniceruptions))

#Mathematics
df$categories_mathematics <- df$categories_mathematics+ df$categories_algebra+df$categories_arithmetic+ df$categories_geometry + df$categories_statistics 
df <- df %>% select (-c(categories_algebra,categories_arithmetic, categories_geometry, categories_statistics))

#Medicine
df$categories_medicine <- df$categories_medicine+ df$categories_cardiology +df$categories_dermatology +df$categories_embryology +df$categories_genetics +df$categories_immunology+df$categories_medicalresearch+df$categories_oncology+df$categories_pediatrics+df$categories_pharmacology+df$categories_physiology+df$categories_psychologypsychiatry+df$categories_psychoanalysis+df$categories_surgery+df$categories_cosmeticsurgery+df$categories_transplants+df$categories_orthopedics+df$categories_veterinarymedicine
df <- df %>% select (-c(categories_cardiology , categories_dermatology , categories_embryology ,categories_genetics  , categories_immunology, categories_medicalresearch , categories_oncology , categories_pediatrics , categories_pharmacology , categories_physiology , categories_psychologypsychiatry , categories_psychoanalysis , categories_surgery , categories_cosmeticsurgery , categories_transplants , categories_orthopedics , categories_veterinarymedicine))





























