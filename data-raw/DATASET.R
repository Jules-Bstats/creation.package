## code to prepare `DATASET` dataset goes here


library(httr2)
req <- request("https://data.nantesmetropole.fr/api/explore/v2.1/catalog/datasets/244400404_comptages-velo-nantes-metropole/records?limit=20&refine=jour%3A%222025%22&refine=vacances_zone_b%3A%22Vacances%20de%20la%20Toussaint%22")
resp <- req_perform(req)  |> resp_body_json(simplifyVector = TRUE)
data_velo_nantes  <- resp$results



usethis::use_data(data_velo_nantes, overwrite = TRUE)
