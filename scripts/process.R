library(git2r); library(jsonlite)

datapackage <- read_json("datapackage.json")

repo <- repository()

if(!is_head(branch = branches(repo)$master)) {
  stop("Faça checkout do branch master antes de publicar o conjunto de dados.")
}

commit <- revparse_single(repo, "master")

datapackage$commit <- commit$sha

write_json(datapackage, "build/datapackage.json", pretty = TRUE, auto_unbox = TRUE)
