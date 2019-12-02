## Export: inla.version

##!\name{inla.version}
##!\alias{version}
##!\alias{inla.version}
##!
##!\title{Show the version of the INLA-package}
##!
##!\description{Show the version of the INLA-package}
##!
##!\usage{
##!inla.version(what = c("default",
##!                      "version", 
##!                      "info", 
##!                      "hgid",
##!                      "rinla",
##!                      "inla",
##!                      "date",
##!                      "bdate"))
##!}
##!
##!\arguments{
##!  \item{what}{What to show version of}
##!}
##!
##!\value{%%
##!  \code{inla.version} either display the current version information using \code{cat}
##!  with
##!  \code{default} or \code{info},  or return the version number/information
##!  for other spesific requests through the call.
##!}
##!%%
##!
##!\author{Havard Rue \email{hrue@r-inla.org}}
##!
##!\examples{
##!## Summary of all
##!inla.version()
##!## The building date
##!inla.version("bdate")
##!}

`inla.version` = function (what = c("default",
                                   "version", 
                                   "info", 
                                   "hgid",
                                   "rinla",
                                   "inla",
                                   "date",
                                   "bdate"))
{
    rinla.hgid =  inla.trim("Version_19.09.03")
    inla.hgid  =  inla.trim("Version_19.09.03")
    date       =  inla.trim("Tue 03 Sep 2019 11:54:04 AM +03")
    bdate      =  inla.trim("201909031154")
    version      =  inla.trim("19.09.03")
    what = match.arg(what)

    if (what %in% c("default", "info")) {

        cat("\n")
        cat(paste("\n\tINLA version ............: ",  version, "\n",  sep=""))
        cat(paste(  "\tINLA date ...............: ",  date, "\n",  sep=""))
        cat(paste(  "\tINLA hgid ...............: ", rinla.hgid, "\n", sep=""))
        cat(paste(  "\tINLA-program hgid .......: ", inla.hgid, "\n", sep=""))
        cat(        "\tMaintainers .............: Havard Rue <hrue@r-inla.org>\n")
        cat(        "\t                         : Finn Lindgren <finn.lindgren@gmail.com>\n")
        cat(        "\t                         : Daniel Simpson <dp.simpson@gmail.com>\n")
        cat(        "\t                         : Elias Teixeira Krainski <elias.krainski@math.ntnu.no>\n")
        cat(        "\t                         : Haakon Bakka <bakka@r-inla.org>\n")
        cat(        "\t                         : Andrea Riebler <andrea.riebler@math.ntnu.no>\n")
        cat(        "\t                         : Geir-Arne Fuglstad <fulgstad@math.ntnu.no>\n")
        cat(        "\tMain web-page ...........: www.r-inla.org\n")
        cat(        "\tDownload-page ...........: inla.r-inla-download.org\n")
        cat(        "\tEmail support ...........: help@r-inla.org\n")
        cat(        "\t                         : r-inla-discussion-group@googlegroups.com\n")
        cat(        "\tSource-code .............: bitbucket.org/hrue/r-inla\n")
        cat("\n")

        return(invisible())

    } else if (what %in% c("hgid", "rinla")) {
        return (rinla.hgid)
    } else if (what %in% "inla") {
        return (inla.hgid)
    } else if (what %in% "date") {
        return (date) 
    } else if (what %in% "bdate") {
        return (bdate) 
    } else if (what %in% "version") {
        return (version) 
    }
 
    stop("This should not happen.")
}
