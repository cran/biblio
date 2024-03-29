% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reflist.R
\name{reflist}
\alias{reflist}
\alias{reflist.character}
\alias{reflist,character-method}
\alias{reflist.lib_df}
\alias{reflist,lib_df-method}
\title{Write a Reference List in rmarkdown}
\usage{
reflist(x, ...)

\method{reflist}{character}(
  x,
  output_file,
  delete_source = TRUE,
  title = "Automatic Reference List",
  output = "html_document",
  nocite = "'@*'",
  urlcolor = "blue",
  encoding = "UTF-8",
  ...
)

\method{reflist}{lib_df}(x, filename, delete_source = TRUE, ...)
}
\arguments{
\item{x}{A \code{lib_df} object to produce the reference list. In the character
method, a character value indicating the path of a bibtex file
(passed to \code{\link[=read_bib]{read_bib()}}).}

\item{...}{Further arguments passed to the yaml header in the intermediate
Rmarkdown document.}

\item{output_file}{A character value with the name for the written Rmarkdown
file.}

\item{delete_source}{A logical value indicating whether written bib file should
be deleted after rendering html or not.}

\item{title, output, nocite, urlcolor}{Arguments used for the yaml-header in
r-markdown and passed to \code{\link[=write_rmd]{write_rmd()}}. They can be cancelled using the
value NULL (not recommended for nocite).}

\item{encoding}{A character value indicating the encoding string. It is
passed to \code{\link[=write_bib]{write_bib()}}.}

\item{filename}{A character value with the name for the written Rmd file,
without file extension.}
}
\value{
An invisible object of class \code{rmd_doc}. A Rmd file will be written by
\code{\link[=write_rmd]{write_rmd()}} as well.
}
\description{
A fast way to produce a reference list in an r-markdown document from a
\code{lib_df} object.

This function may or may not produce intermediate files (bib and Rmd) and the
result can be assigned to an object for further edition
(see \code{\link[yamlme:update]{yamlme::update()}}).

A html file will be written by \code{\link[=write_rmd]{write_rmd()}} and \code{\link[=render_rmd]{render_rmd()}} in the
working directory and displayed by \code{\link[=browseURL]{browseURL()}}.
}
\examples{
\dontrun{
reflist(synopsis)
}

}
