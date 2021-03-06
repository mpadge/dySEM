% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getDydmacs.R
\name{getDydmacs}
\alias{getDydmacs}
\title{Calculates dmacs difference in expected indicator scores for between dyad members}
\usage{
getDydmacs(dat, dvn, fit, nodewidth = 0.01, lowerLV = -5, upperLV = 5)
}
\arguments{
\item{dat}{data frame of indicators}

\item{dvn}{input dvn list from scrapeVarCross}

\item{fit}{outputted dyadic cfa lavaan object; should be from a partial-invariance model}

\item{nodewidth}{space between nodes during quadrature approximation (default = .01)}

\item{lowerLV}{lowest latent variable value evaluated (default = -5)}

\item{upperLV}{greatest latent variable value evaluated (default = 5)}
}
\value{

}
\description{
Calculates dmacs difference in expected indicator scores for between dyad members
}
\examples{
dvn <- scrapeVarCross(dat = commitmentQ, x_order = "spi", x_stem = "sat.g", x_delim1 = ".", x_delim2="_", distinguish_1="1", distinguish_2="2")
sat.config.script <-  scriptCFA(dvn, lvname = "Sat", model = "configural")
sat.config.mod <- lavaan::cfa(sat.config.script, data = commitmentQ, std.lv = F, auto.fix.first= F, meanstructure = T)
sat.dmacs <- getDydmacs(commitmentQ, dvn, sat.config.mod)

}
\seealso{
Other supplemental model calculators: 
\code{\link{getDyReliability}()},
\code{\link{getIndistFit}()}
}
\concept{supplemental model calculators}
