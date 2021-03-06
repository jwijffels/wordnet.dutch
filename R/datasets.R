
#' @name dutch_synset
#' @title Dutch synthetic sets
#' @description Dutch synthetic sets. The dataset provices 117914 synthetic sets.\cr 
#' Each synthetic sets can have several relations to other synthetic sets (hyponym, hyperonym, instance, mero member, holo member, ...).\cr
#' Synthetic sets are labelled with definitions in nl and en. \cr
#' The relations between the synthetic sets have the provenance either from the Open Dutch Wordnet or from Princeton Wordnet while the definitions 
#' can also originate from google-translate.\cr
#' 
#' The dataset itself is a list with 3 elements
#' 
#' \itemize{
#' \item ids: a data.frame with columns id and ili
#' \item relations: a data.frame with columns id, ili, provencance, relType and target
#' \item definitions: a data.frame with columns id, ili, gloss, language, and provenance
#' }
#' Data was extracted from the xml file odwn_orbn_gwg-LMF_1.3.xml.gz available at \url{https://github.com/MartenPostma/OpenDutchWordnet}
#' 
#' @docType data
#' @source \url{https://github.com/MartenPostma/OpenDutchWordnet/tree/master/resources/odwn/odwn_orbn_gwg-LMF_1.3.xml.gz}
#' @references \url{https://github.com/MartenPostma/OpenDutchWordnet}
#' @examples
#' data(dutch_synset)
#' str(dutch_synset)
#' lapply(dutch_synset, head)
#' nrow(dutch_synset$ids)
#' 
#' table(dutch_synset$relations$relType)
#' table(dutch_synset$definitions$provenance, dutch_synset$definitions$language)
NULL

