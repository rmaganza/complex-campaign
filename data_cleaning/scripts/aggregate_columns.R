library(dplyr)

aggregate_columns <- function(df) {
df$categories_intentions <- df$categories_search + df$categories_find + df$categories_purchase
df <- df %>% select(-c(categories_search, categories_find, categories_purchase))


df$categories_religionandspirituality <- df$categories_atheismagnosticism + df$categories_buddhism + df$categories_christianity + df$categories_protestantism + df$categories_hinduism + df$categories_islam + df$categories_islamicfundamentalism
df <- df%>% select(-c(categories_protestantism, categories_buddhism, categories_christianity, categories_hinduism, categories_islam, categories_islamicfundamentalism))


df$categories_shopping <- df$categories_shopping + df$categories_contestsandfreebies + df$categories_couponing + df$categories_comparisonsengines + df$categories_retail + df$categories_supermarkets + df$categories_secondhandmarket + df$categories_couponing +df$categories_contestsandfreebies
df <- df %>% select(-c(categories_comparisonsengines, categories_retail, categories_supermarkets, categories_secondhandmarket, categories_couponing, categories_contestsandfreebies))


df$categories_realestate <- df$categories_realestate + df$categories_apartments + df$categories_architects + df$categories_buyingsellinghomes
df <- df %>% select(-c(categories_realestate, categories_apartments, categories_architects, categories_buyingsellinghomes))


df$categories_travel <- df$categories_travel + df$categories_australiaandnewzealand + df$categories_touristdestinations + df$categories_africa + df$categories_byuslocale + df$categories_canada + df$categories_europe + df$categories_france + df$categories_italy + df$categories_japan + df$categories_mexicoandcentralamerica + df$categories_southamerica + df$categories_unitedkingdom + df$categories_nationalparks + df$categories_themeparks + df$categories_cities + df$categories_spas + df$categories_seasideresorts + df$categories_skiresorts + df$categories_budgettravel + df$categories_lastminute + df$categories_holidays + df$categories_touristicfacilities + df$categories_bedandbreakfast + df$categories_camping + df$categories_hotel + df$categories_transports + df$categories_airtravel + df$categories_airplanes + df$categories_airfare + df$categories_airports + df$categories_airandspaceaccident + df$categories_railwayaccident + df$categories_railwaytravel + df$categories_roadtravel + df$categories_roadaccident + df$categories_seatravel + df$categories_cruises + df$categories_maritimeaccident + df$categories_publictransport +df$categories_airlines

df <- df %>% select(-c(categories_travel, categories_touristdestinations, categories_africa, categories_australiaandnewzealand, categories_byuslocale, categories_canada, categories_europe, categories_france, categories_italy, categories_japan, categories_mexicoandcentralamerica, categories_southamerica, categories_unitedkingdom, categories_nationalparks, categories_themeparks, categories_cities, categories_spas, categories_seasideresorts, categories_skiresorts, categories_budgettravel, categories_lastminute, categories_holidays, categories_touristicfacilities, categories_bedandbreakfast, categories_camping, categories_hotel, categories_transports, categories_airtravel, categories_airplanes, categories_airfare, categories_airports, categories_airandspaceaccident, categories_railwayaccident, categories_railwaytravel, categories_roadtravel, categories_roadaccident, categories_seatravel, categories_cruises, categories_maritimeaccident, categories_publictransport, categories_airlines))


df$categories_technologyandcomputing <- df$categories_technologyandcomputing + df$categories_hardware + df$categories_computerperipherals + df$categories_monitor + df$categories_printers + df$categories_gameconsole + df$categories_disks + df$categories_graphicscards + df$categories_soundboard + df$categories_memory + df$categories_portablememory + df$categories_processors + df$categories_motherboards + df$categories_computernetworking + df$categories_router + df$categories_wirelesstechnology + df$categories_networksecurity + df$categories_computer + df$categories_desktopcomputer + df$categories_portablecomputer + df$categories_laptop + df$categories_palmtopspdas + df$categories_tabletpc + df$categories_internettechnology + df$categories_chat + df$categories_ecommerce + df$categories_email + df$categories_websearch + df$categories_forum + df$categories_socialnetwork + df$categories_computercrime + df$categories_hacking + df$categories_operatingsystems + df$categories_macos + df$categories_windows + df$categories_programminglanguages + df$categories_cc + df$categories_java + df$categories_javascript + df$categories_software + df$categories_antivirussoftware + df$categories_graphicssoftware + df$categories_3dgraphics + df$categories_sharewarefreeware + df$categories_desktopvideo + df$categories_databases + df$categories_technologicalinnovation + df$categories_consumerelectronics + df$categories_mp3reader + df$categories_ebookreader + df$categories_gpsnavigator + df$categories_homevideodvd + df$categories_radioset + df$categories_tvset + df$categories_camerasandcamcorders + df$categories_cameras + df$categories_camcorders + df$categories_photoandvideoaccessories + df$categories_telephony + df$categories_cellphones + df$categories_cellphoneaccessories + df$categories_connection + df$categories_fixedphone + df$categories_smartphone + df$categories_telephonerates + df$categories_electroniccomponents + df$categories_computerreviews + df$categories_macsupport + df$categories_mp3midi + df$categories_pcsupport

df <- df %>% select(-c(categories_technologyandcomputing, categories_hardware, categories_computerperipherals, categories_monitor, categories_printers, categories_gameconsole, categories_disks, categories_graphicscards, categories_soundboard, categories_memory, categories_portablememory, categories_processors, categories_motherboards, categories_computernetworking, categories_router, categories_wirelesstechnology, categories_networksecurity, categories_computer, categories_desktopcomputer, categories_portablecomputer, categories_laptop, categories_palmtopspdas, categories_tabletpc, categories_internettechnology, categories_chat, categories_ecommerce, categories_email, categories_websearch, categories_forum, categories_socialnetwork, categories_computercrime, categories_hacking, categories_operatingsystems, categories_macos, categories_windows, categories_programminglanguages, categories_cc, categories_java, categories_javascript, categories_software, categories_antivirussoftware, categories_graphicssoftware, categories_3dgraphics, categories_sharewarefreeware, categories_desktopvideo, categories_databases, categories_technologicalinnovation, categories_consumerelectronics, categories_mp3reader, categories_ebookreader, categories_gpsnavigator, categories_homevideodvd, categories_radioset, categories_tvset, categories_camerasandcamcorders, categories_cameras, categories_camcorders, categories_photoandvideoaccessories, categories_telephony, categories_cellphones, categories_cellphoneaccessories, categories_connection, categories_fixedphone, categories_smartphone, categories_telephonerates, categories_electroniccomponents, categories_computerreviews, categories_macsupport, categories_mp3midi, categories_pcsupport))


df$categories_artandentertainment <- df$categories_artandentertainment + df$categories_booksandliterature + df$categories_bestsellers + df$categories_referencebooks + df$categories_textbooks + df$categories_childrensbooks + df$categories_comicbooks + df$categories_mysterynovels + df$categories_mythology + df$categories_sciencefiction + df$categories_nonfiction + df$categories_poetry + df$categories_literaryawards +
  df$categories_celebrityfangossip +
  df$categories_cinema + df$categories_filmfestivalsandawards + df$categories_movies +
  df$categories_dance + df$categories_ballet + df$categories_moderndance +
  df$categories_fineart + df$categories_architecture + df$categories_drawing + df$categories_gallery + df$categories_museums + df$categories_painting + df$categories_sculpture +
  df$categories_radio + df$categories_radioprogrammes +
  df$categories_humor +
  df$categories_music + df$categories_hits + df$categories_musicalinstruments + df$categories_musicgenres + df$categories_classicalmusic + df$categories_folkmusic + df$categories_jazzmusic + df$categories_opera + df$categories_popmusic + df$categories_rockmusic + df$categories_religiousmusic + df$categories_singing +
  df$categories_television + df$categories_tvseries + df$categories_tvshows +
  df$categories_showsandevents + df$categories_beautycontest + df$categories_circus + df$categories_concert + df$categories_classicalconcert + df$categories_jazzconcert + df$categories_rockconcert + df$categories_events  + df$categories_exhibition + df$categories_festival + df$categories_festivities + df$categories_sportsevent +
  df$categories_theatre + df$categories_drama + df$categories_theatreawards


df$categories_businessindustry <- df$categories_agriculture + df$categories_organicfarming +
  df$categories_ceramicindustry +
  df$categories_petrochemistry +
  df$categories_construction +
  df$categories_cosmeticsindustry +
  df$categories_electronicindustry +
  df$categories_energy + df$categories_electricity + df$categories_electricityrates + df$categories_nuclearaccident + df$categories_naturalgas + df$categories_oil + df$categories_oilcompany + df$categories_petrol + df$categories_solarenergy +
  df$categories_foodindustry +
  df$categories_forestry +
  df$categories_industrialdesign +
  df$categories_industryfinancing +
  df$categories_logistics +
  df$categories_manufacturing +
  df$categories_metals +
  df$categories_miningindustry +
  df$categories_pharmaceuticalindustry +
  df$categories_plasticsindustry +
  df$categories_shipbuilding +
  df$categories_textileindustry +
  df$categories_warindustry + df$categories_weaponry

df$categories_business <- df$categories_business + df$categories_advertising +
  df$categories_automation +df$categories_robotics +
  df$categories_businesssoftware +
  df$categories_company + df$categories_bankruptcy + df$categories_earnings + df$categories_mergerandacquisition +
  df$categories_marketing +
  df$categories_publishing +
  df$categories_recordcompany

df$categories_careers <- df$categories_careers + df$categories_careeradvice + df$categories_jobsearch + df$categories_nursing


df$categories_education <- df$categories_education + df$categories_school + df$categories_k6education + df$categories_712education +
  df$categories_graduateschool + df$categories_college +
  df$categories_distancelearning +
  df$categories_homeworkstudytips +
  df$categories_adulteducation +
  df$categories_englishasa2ndlanguage +
  df$categories_languagelearning

df$categories_familyandparenting <- df$categories_adoption +
  df$categories_motherhood + df$categories_artificialinsemination + df$categories_pregnancy +
  df$categories_babiesandtoddlers +
  df$categories_children + df$categories_childrensfood + df$categories_childrensrights + df$categories_objectsforchildren + df$categories_daycarepreschool

df$categories_finance <- df$categories_finance + df$categories_personalfinance + df$categories_investing + df$categories_stocks + df$categories_mutualfunds + df$categories_insurance + df$categories_carinsurance + df$categories_creditdebtandloans + df$categories_financialplanning + df$categories_retirementplanning + df$categories_saving +
  df$categories_bank + df$categories_bankaccount + df$categories_checks + df$categories_foreignbank + df$categories_portfolio + df$categories_securities + df$categories_bankservices + df$categories_prices + df$categories_taxplanning

df <- df %>% select( -c(categories_booksandliterature , categories_bestsellers , categories_referencebooks , categories_textbooks , categories_childrensbooks , categories_comicbooks , categories_mysterynovels , categories_mythology , categories_sciencefiction , categories_nonfiction , categories_poetry , categories_literaryawards ,
                        categories_celebrityfangossip ,
                        categories_cinema , categories_filmfestivalsandawards , categories_movies ,
                        categories_dance , categories_ballet , categories_moderndance ,
                        categories_fineart , categories_architecture , categories_drawing , categories_gallery , categories_museums , categories_painting , categories_sculpture ,
                        categories_radio , categories_radioprogrammes ,
                        categories_humor ,
                        categories_music , categories_hits , categories_musicalinstruments , categories_musicgenres , categories_classicalmusic , categories_folkmusic , categories_jazzmusic , categories_opera , categories_popmusic , categories_rockmusic , categories_religiousmusic , categories_singing ,
                        categories_television , categories_tvseries , categories_tvshows ,
                        categories_showsandevents , categories_beautycontest , categories_circus , categories_concert , categories_classicalconcert , categories_jazzconcert , categories_rockconcert , categories_events  , categories_exhibition , categories_festival , categories_festivities , categories_sportsevent ,
                        categories_theatre , categories_drama , categories_theatreawards ,
                        categories_agriculture , categories_organicfarming ,
                        categories_ceramicindustry ,
                        categories_petrochemistry ,
                        categories_construction ,
                        categories_cosmeticsindustry ,
                        categories_electronicindustry ,
                        categories_energy , categories_electricity , categories_electricityrates , categories_nuclearaccident , categories_naturalgas , categories_oil , categories_oilcompany , categories_petrol , categories_solarenergy ,
                        categories_foodindustry ,
                        categories_forestry ,
                        categories_industrialdesign ,
                        categories_industryfinancing ,
                        categories_logistics ,
                        categories_manufacturing ,
                        categories_metals ,
                        categories_miningindustry ,
                        categories_pharmaceuticalindustry ,
                        categories_plasticsindustry ,
                        categories_shipbuilding ,
                        categories_textileindustry ,
                        categories_warindustry , categories_weaponry ,
                        categories_advertising ,
                        categories_automation ,categories_robotics ,
                        categories_businesssoftware ,
                        categories_company , categories_bankruptcy , categories_earnings , categories_mergerandacquisition ,
                        categories_marketing ,
                        categories_publishing ,
                        categories_recordcompany ,
                        categories_careeradvice , categories_jobsearch , categories_nursing ,
                        categories_school , categories_k6education , categories_712education ,
                        categories_graduateschool , categories_college ,
                        categories_distancelearning ,
                        categories_homeworkstudytips ,
                        categories_adulteducation ,
                        categories_englishasa2ndlanguage ,
                        categories_languagelearning ,
                        categories_adoption ,
                        categories_motherhood , categories_artificialinsemination , categories_pregnancy ,
                        categories_babiesandtoddlers ,
                        categories_children , categories_childrensfood , categories_childrensrights , categories_objectsforchildren , categories_daycarepreschool,
                        categories_personalfinance , categories_investing , categories_stocks , categories_mutualfunds , categories_insurance , categories_carinsurance , categories_creditdebtandloans , categories_financialplanning , categories_retirementplanning , categories_saving ,
                        categories_bank , categories_bankaccount , categories_checks , categories_foreignbank , categories_portfolio , categories_securities , categories_bankservices , categories_prices , categories_taxplanning
))


df$categories_pets <- df$categories_pets + df$categories_birds + df$categories_dogs+ df$categories_animalwelfare+ df$categories_zoo + df$categories_cats
df <- df %>% select (-c(categories_birds,categories_dogs,categories_animalwelfare, categories_zoo, categories_cats))


#SPORTS

df$categories_sports <- df$categories_sports + df$categories_bicycling + df$categories_mountainbiking + df$categories_mountainclimbing + df$categories_fishing + df$categories_sportfishing + df$categories_hockey + df$categories_icehockey + df$categories_huntingshooting + df$categories_targetshooting + df$categories_martialarts+ df$categories_karate + df$categories_sumo + df$categories_autoracing + df$categories_formula1 + df$categories_rally + df$categories_nascar + df$categories_archery + df$categories_badminton + df$categories_baseball + df$categories_basketball + df$categories_bodybuilding + df$categories_boxing + df$categories_canoeingkayaking + df$categories_cricket + df$categories_fencing + df$categories_football + df$categories_golf + df$categories_handball + df$categories_horseracing + df$categories_horses + df$categories_motorcycling + df$categories_motogp + df$categories_olympics + df$categories_rugby + df$categories_runningjogging + df$categories_scubadiving + df$categories_skateboarding + df$categories_skating + df$categories_skiing + df$categories_downhillskiing + df$categories_snowboarding + df$categories_soccer + df$categories_surfingbodyboarding + df$categories_squash + df$categories_swimming + df$categories_tabletennispingpong + df$categories_tennis + df$categories_trekking + df$categories_beachvolleyball + df$categories_wrestling +df$categories_billiards

df <- df%>% select(-c(categories_autoracing, categories_horseracing, categories_horses, categories_formula1, categories_rally, categories_nascar, categories_archery, categories_badminton, categories_baseball, categories_basketball, categories_bodybuilding, categories_boxing, categories_canoeingkayaking, categories_cricket, categories_fencing, categories_football, categories_golf, categories_handball, categories_motorcycling, categories_motogp, categories_olympics, categories_rugby, categories_runningjogging, categories_scubadiving, categories_skateboarding, categories_skating, categories_snowboarding, categories_soccer, categories_surfingbodyboarding, categories_squash, categories_swimming, categories_tabletennispingpong, categories_tennis, categories_trekking, categories_beachvolleyball, categories_wrestling, categories_billiards))
df <- df %>% select (-c(categories_bicycling, categories_mountainbiking))
df <- df %>% select (-categories_mountainclimbing)
df <- df %>% select (-c(categories_fishing, categories_sportfishing))
df <- df %>% select (-c(categories_hockey, categories_icehockey))
df <- df %>% select (-c(categories_huntingshooting, categories_targetshooting))
df <- df %>% select (-c(categories_martialarts, categories_karate, categories_sumo))
df <- df %>% select (-c(categories_skiing, categories_downhillskiing))


#STYLE AND FASHION

df$categories_styleandfashion <- df$categories_accessories + df$categories_gym + df$categories_cosmetics + df$categories_cosmeticsformen + df$categories_haircare + df$categories_tattoos + df$categories_clothing + df$categories_fashion + df$categories_jewelry + df$categories_swimwear +df$categories_fashionshow +df$categories_footwear +df$categories_mensfashion + df$categories_style + df$categories_underwear + df$categories_luxurygoods

df <- df %>% select (-c(categories_accessories, categories_gym,categories_cosmetics, categories_cosmeticsformen, categories_haircare, categories_tattoos, categories_clothing, categories_fashion, categories_jewelry, categories_swimwear, categories_fashionshow, categories_footwear, categories_mensfashion, categories_style, categories_underwear, categories_luxurygoods))



#SCIENCE

df$categories_science <- df$categories_zoology+df$categories_breeding+ df$categories_endangeredspecies + df$categories_ichthyology+ df$categories_ornithology + df$categories_biology + df$categories_botany + df$categories_marinebiology + df$categories_zoology + df$categories_chemistry + df$categories_inorganicchemistry + df$categories_organicchemistry + df$categories_ecology+df$categories_pollution + df$categories_wastedisposal+ df$categories_recycling + df$categories_engineering + df$categories_geography+ df$categories_cartography+df$categories_hydrography+ df$categories_topography + df$categories_geology+ df$categories_mineralogy + df$categories_earthquakes + df$categories_volcanology + df$categories_volcaniceruptions +  df$categories_mathematics+ df$categories_algebra+df$categories_arithmetic+ df$categories_geometry + df$categories_statistics + df$categories_medicine +df$categories_dermatology +df$categories_embryology +df$categories_genetics +df$categories_immunology+df$categories_oncology+df$categories_pediatrics+df$categories_pharmacology+df$categories_physiology+df$categories_psychologypsychiatry+df$categories_surgery+df$categories_cosmeticsurgery+df$categories_transplants+df$categories_veterinarymedicine + df$categories_physics + df$categories_spaceastronomy + df$categories_atomicphysics + df$categories_electromagnetism + df$categories_optics + df$categories_socialscience + df$categories_anthropology + df$categories_history + df$categories_ancienthistory + df$categories_archaeology + df$categories_contemporaryhistory + df$categories_heraldry + df$categories_genealogy + df$categories_medievalhistory + df$categories_modernhistory + df$categories_prehistory + df$categories_linguistics + df$categories_translation + df$categories_pedagogy + df$categories_philosophy + df$categories_ethics + df$categories_sociology + df$categories_weather + df$categories_meteorologicaldisaster + df$categories_flood + df$categories_hurricane +df$categories_entomology

df <- df %>% select (-c(categories_zoology, categories_breeding,categories_endangeredspecies, categories_ichthyology ,categories_ornithology, categories_entomology))
df <- df %>% select (-c(categories_botany, categories_marinebiology, categories_biology))
df <- df %>% select(-c(categories_chemistry, categories_organicchemistry, categories_inorganicchemistry))
df <- df %>% select (-c(categories_ecology, categories_pollution, categories_wastedisposal, categories_recycling))
df <- df %>% select (-c(categories_geography,categories_cartography,categories_hydrography, categories_topography))
df <- df %>% select(-categories_engineering)
df <- df %>% select (-c(categories_geology, categories_mineralogy, categories_earthquakes, categories_volcanology, categories_volcaniceruptions))
df <- df %>% select (-c(categories_mathematics, categories_algebra,categories_arithmetic, categories_geometry, categories_statistics))
df <- df %>% select (-c(categories_medicine, categories_dermatology , categories_embryology ,categories_genetics  , categories_immunology, categories_oncology , categories_pediatrics , categories_pharmacology , categories_physiology , categories_psychologypsychiatry, categories_surgery , categories_cosmeticsurgery , categories_transplants, categories_veterinarymedicine))
df %<>% select(-c(categories_physics, categories_spaceastronomy , categories_atomicphysics , categories_electromagnetism, categories_optics))

df %<>% select(-c(categories_socialscience, categories_anthropology , categories_history , categories_ancienthistory , categories_archaeology , categories_contemporaryhistory , categories_heraldry , categories_genealogy , categories_medievalhistory , categories_modernhistory , categories_prehistory , categories_linguistics , categories_translation , categories_pedagogy , categories_philosophy , categories_ethics , categories_sociology))

df %<>% select(-c(categories_weather, categories_meteorologicaldisaster , categories_flood , categories_hurricane))
#############################
#categories_healthandfitness#
#############################
df$categories_healthandfitness<-df$categories_exercise+df$categories_disease+
  df$categories_aidshiv+df$categories_allergies+df$categories_asthma+df$categories_cholesterol+df$categories_chronicfatiguesyndrome+
  df$categories_coldandflu+df$categories_diabetes+df$categories_gerdacidreflux+df$categories_headachesmigraines+df$categories_heartdisease+df$categories_ibscrohnsdisease+df$categories_infertility+
  df$categories_arthritis+df$categories_thyroiddisease+df$categories_epidemic+df$categories_alternativemedicine+df$categories_herbsforhealth+df$categories_homeopathy+df$categories_dentalcare+
  df$categories_menshealth+df$categories_womenshealth+df$categories_seniorhealth+df$categories_disorders+df$categories_sleepdisorders+df$categories_autismpdd+df$categories_depression+df$categories_therapy+df$categories_paintherapy+
  df$categories_addiction+df$categories_alcoholism+df$categories_substanceabuse+df$categories_smokingaddiction+df$categories_weightloss+df$categories_clinicaltests+df$categories_drugs+df$categories_sportsmedicine



df<-df %>% select(-c(categories_exercise,categories_disease,
            categories_aidshiv,categories_allergies,categories_asthma,categories_cholesterol,categories_chronicfatiguesyndrome,
            categories_coldandflu, categories_diabetes,categories_gerdacidreflux,categories_headachesmigraines,categories_heartdisease,categories_ibscrohnsdisease,categories_infertility,
            categories_arthritis,categories_thyroiddisease,categories_epidemic,categories_alternativemedicine,categories_herbsforhealth,categories_homeopathy,categories_dentalcare,
            categories_menshealth,categories_womenshealth,categories_seniorhealth,categories_disorders,categories_sleepdisorders,categories_autismpdd,categories_depression,categories_therapy,categories_paintherapy,
            categories_addiction,categories_alcoholism,categories_substanceabuse,categories_smokingaddiction,categories_weightloss,categories_clinicaltests,categories_drugs,categories_sportsmedicine))





#########################
#catedories_foodanddrink#
#########################
df$categories_foodanddrink<-df$categories_dessertsandbaking+df$categories_foodallergies+df$categories_healthlowfatcooking+df$categories_chinesecuisine+df$categories_frenchcuisine+df$categories_italiancuisine+df$categories_japanesecuisine+df$categories_mexicancuisine+df$categories_vegan+df$categories_vegetarian+df$categories_kosherfood+
  df$categories_barbecuesandgrilling+df$categories_beverages+df$categories_alcoholicbeverages+df$categories_cocktailsbeer+df$categories_wine+df$categories_nonalcoholicbeverages+df$categories_coffeetea+df$categories_gastronomy+df$categories_fastfood+df$categories_slowfood+df$categories_bar+df$categories_restaurant

df<-df %>% select(-c(categories_dessertsandbaking,categories_foodallergies,categories_healthlowfatcooking,categories_chinesecuisine,categories_frenchcuisine,categories_italiancuisine,categories_japanesecuisine,categories_mexicancuisine,categories_vegan,categories_vegetarian,categories_kosherfood,
           categories_barbecuesandgrilling,categories_beverages,categories_alcoholicbeverages,categories_cocktailsbeer,categories_wine,categories_nonalcoholicbeverages,categories_coffeetea,categories_gastronomy,categories_fastfood,categories_slowfood,categories_bar,categories_restaurant))







################################
#categories_hobbiesandinterests#
################################
df$categories_hobbiesandinterests <- df$categories_hobbiesandinterests+df$categories_arttechnology+ df$categories_artsandcrafts+df$categories_jewelrymaking+df$categories_woodworking+df$categories_photography+df$categories_drawingsketchingpainting+df$categories_crochet+df$categories_knitting+df$categories_diy+df$categories_pottery+df$categories_watchmaking+df$categories_birdwatching+
  df$categories_collecting+df$categories_stampsandcoins+df$categories_reading+df$categories_scifiandfantasy+df$categories_gettingpublished+df$categories_screenwriting+df$categories_freelancewriting+df$categories_guitar+df$categories_inventorsandpatents+df$categories_games+df$categories_cardgames+df$categories_chess+df$categories_roleplayinggames+df$categories_videoandcomputergames+ df$categories_boardgamespuzzles+df$categories_lottery+df$categories_magicandillusion+df$categories_needlework+df$categories_scrapbooking+df$categories_astrology+df$categories_paranormalphenomena+df$categories_occult+df$categories_ufo + df$categories_gambling


df <- df %>% select(-c(categories_arttechnology,categories_artsandcrafts,categories_jewelrymaking,categories_woodworking,categories_photography,categories_drawingsketchingpainting,categories_crochet,categories_knitting,categories_diy,categories_pottery,categories_watchmaking,categories_birdwatching,categories_collecting,categories_stampsandcoins,categories_reading,categories_scifiandfantasy,categories_gettingpublished,categories_screenwriting,categories_freelancewriting,categories_guitar,categories_inventorsandpatents,categories_games,categories_cardgames,categories_chess,categories_roleplayinggames,admants_videoandcomputergames,categories_boardgamespuzzles,categories_lottery,categories_magicandillusion,categories_needlework,categories_scrapbooking,categories_astrology,categories_paranormalphenomena,categories_occult,categories_ufo, categories_gambling))


##########################
#categories_homeandgarden#
##########################
df$categories_homeandgarden<-df$categories_homeandgarden+df$categories_appliances+df$categories_entertaining+df$categories_gardening+df$categories_housecare+df$categories_homerepair+df$categories_interiordecorating+df$categories_furniture+df$categories_landscaping+
  df$categories_luxuryhomes+df$categories_remodelingandconstruction

df<-df %>% select(-c(categories_appliances,categories_entertaining,categories_gardening,categories_housecare,categories_homerepair,categories_interiordecorating,categories_furniture,categories_landscaping, categories_luxuryhomes,categories_remodelingandconstruction))



###############################
#categories_lawgovtandpolitics#
###############################

df$categories_lawgovtandpolitics<-df$categories_immigration+df$categories_legalissues+df$categories_civillaw+df$categories_copyright+df$categories_civilrights+df$categories_privacy+df$categories_criminallaw+df$categories_deathpenalty+
  df$categories_internationallaw+df$categories_legislation+df$categories_buildinglaws+df$categories_educationlaws+df$categories_familylaws+df$categories_healthcarelaws+df$categories_taxlaws+df$categories_welfarelaws+df$categories_commentary+df$categories_politics+df$categories_elections+
  df$categories_localelections+df$categories_congressionalelections+df$categories_presidentialelections+df$categories_referendums+df$categories_foreignpolicy+df$categories_government+df$categories_headsofstate+df$categories_domesticpolicy+df$categories_parliament+df$categories_parties

df<-df %>% select(-c(categories_immigration,categories_legalissues,categories_civillaw,categories_copyright,categories_civilrights,categories_privacy,categories_criminallaw,categories_deathpenalty, categories_internationallaw,categories_legislation,categories_buildinglaws,categories_educationlaws,categories_familylaws,categories_healthcarelaws,categories_taxlaws,categories_welfarelaws,categories_commentary,categories_politics,categories_elections,categories_localelections,categories_congressionalelections,categories_presidentialelections,categories_referendums,categories_foreignpolicy,categories_government,categories_headsofstate,categories_domesticpolicy,categories_parliament,categories_parties))


#####################
# categories_society#
#####################

df$categories_society <- df$categories_society + df$categories_dating + df$categories_gaylife + df$categories_seniorliving + df$categories_teens +df$categories_ethnicspecific + df$categories_armedforces + df$categories_airforce+df$categories_army+ df$categories_navy + df$categories_crime +df$categories_drugtrafficking+ df$categories_organizedcrime+df$categories_propertycrime+df$categories_bribery+df$categories_corruption+df$categories_fraud+df$categories_robbery+df$categories_theft+df$categories_assault+df$categories_homicide+df$categories_kidnapping+ df$categories_torture+df$categories_sexualoffence+df$categories_paedophilia+df$categories_prostitution+df$categories_rape + df$categories_espionageandintelligence + df$categories_secretservice+df$categories_terrorism + df$categories_lawenforcement+df$categories_firedepartment+df$categories_police +df$categories_racism + df$categories_sex+df$categories_pornography+df$categories_sexeducation + df$categories_divorce+df$categories_family+df$categories_marriage + df$categories_unrestandwar + df$categories_healthcare+df$categories_hospital+df$categories_volunteering +df$categories_work+df$categories_contracts+df$categories_retirement+df$categories_temporaryagencies+df$categories_unemployment+df$categories_unions



df %<>% select(-c(categories_dating, categories_gaylife, categories_seniorliving, categories_teens, categories_ethnicspecific, categories_armedforces, categories_crime, categories_espionageandintelligence, categories_lawenforcement, categories_racism, categories_sex, categories_unrestandwar, categories_work))


df<- df %>% select(-c(categories_airforce,categories_army,categories_navy,categories_drugtrafficking, categories_organizedcrime,categories_propertycrime,categories_bribery,categories_corruption,categories_fraud,categories_robbery,categories_theft,categories_assault,categories_homicide,categories_kidnapping, categories_torture,categories_sexualoffence,categories_paedophilia,categories_prostitution,categories_rape,categories_secretservice,categories_terrorism,categories_firedepartment,categories_police,categories_pornography,categories_sexeducation,categories_divorce,categories_family,categories_marriage,categories_healthcare,categories_hospital,categories_volunteering,categories_contracts,categories_retirement,categories_temporaryagencies,categories_unemployment,categories_unions))

df$categories_automotive <- df$categories_automotive + df$categories_autoparts + df$categories_buyingsellingcars + df$categories_carculture + df$categories_buyasecondhandcar + df$categories_cars + df$categories_coupe + df$categories_crossover + df$categories_electricvehicle + df$categories_hatchback + df$categories_luxury + df$categories_minivan + df$categories_performancevehicles + df$categories_vintagecars + df$categories_wagon + df$categories_suv + df$categories_rv + df$categories_carindustry + df$categories_motorcycles +df$categories_motorshows + df$categories_trucksandaccessories

df %<>% select(-c(categories_autoparts, categories_buyingsellingcars, categories_carculture, categories_buyasecondhandcar, categories_cars, categories_coupe, categories_crossover, categories_electricvehicle, categories_hatchback, categories_luxury, categories_minivan, categories_performancevehicles, categories_vintagecars, categories_wagon, categories_suv, categories_rv, categories_carindustry, categories_motorcycles, categories_motorshows, categories_trucksandaccessories))


}
