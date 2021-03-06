% Generated by roxygen2 (4.0.0): do not edit by hand
\name{d3ForceNetwork}
\alias{d3ForceNetwork}
\title{Create a D3 JavaScript force directed network graph.}
\source{
D3.js was created by Michael Bostock. See \url{http://d3js.org/} and, more
specifically for force directed networks
\url{https://github.com/mbostock/d3/wiki/Force-Layout}.
}
\usage{
d3ForceNetwork(Links, Nodes, Source, Target, Value = NULL, NodeID, Group,
  height = 600, width = 900, fontsize = 7, linkDistance = 50,
  charge = -120, linkColour = "#666", opacity = 0.6, zoom = FALSE,
  parentElement = "body", standAlone = TRUE, file = NULL,
  iframe = FALSE, d3Script = "http://d3js.org/d3.v3.min.js")
}
\arguments{
\item{Links}{a data frame object with the links between the nodes. It should
include the \code{Source} and \code{Target} for each link. These should be
numbered starting from 0. An optional \code{Value} variable can be included
to specify how close the nodes are to one another.}

\item{Nodes}{a data frame containing the node id and properties of the nodes.
If no ID is specified then the nodes must be in the same order as the Source
variable column in the \code{Links} data frame. Currently only a grouping
variable is allowed.}

\item{Source}{character string naming the network source variable in the
\code{Links} data frame.}

\item{Target}{character string naming the network target variable in the
\code{Links} data frame.}

\item{Value}{character string naming the variable in the \code{Links} data
frame for how wide the links are.}

\item{NodeID}{character string specifying the node IDs in the \code{Nodes}
data frame.}

\item{Group}{character string specifying the group of each node in the
\code{Nodes} data frame.}

\item{height}{numeric height for the network graph's frame area in pixels.}

\item{width}{numeric width for the network graph's frame area in pixels.}

\item{fontsize}{numeric font size in pixels for the node text labels.}

\item{linkDistance}{numeric distance between the links in pixels (actually
arbitrary relative to the diagram's size).}

\item{charge}{numeric value indicating either the strength of the node
repulsion (negative value) or attraction (positive value).}

\item{linkColour}{character string specifying the colour you want the link
lines to be. Multiple formats supported (e.g. hexadecimal).}

\item{opacity}{numeric value of the proportion opaque you would like the
graph elements to be.}

\item{zoom}{logical, whether or not to enable the ability to use the mouse
scroll-wheel to zoom in and out of the graph.}

\item{parentElement}{character string specifying the parent element for the
resulting svg network graph. This effectively allows the user to specify
where on the html page the graph will be placed. By default the parent
element is \code{body}.}

\item{standAlone}{logical, whether or not to return a complete HTML document
(with head and foot) or just the script.}

\item{file}{a character string of the file name to save the resulting graph.
If a file name is given a standalone webpage is created, i.e. with a header
and footer. If \code{file = NULL} then result is returned to the console.}

\item{iframe}{logical. If \code{iframe = TRUE} then the graph is saved to an
external file in the working directory and an HTML \code{iframe} linking to
the file is printed to the console. This is useful if you are using Slidify
and many other HTML slideshow framworks and want to include the graph in the
resulting page. If you set the knitr code chunk \code{results='asis'} then
the graph will be rendered in the output. Usually, you can use
\code{iframe = FALSE} if you are creating simple knitr Markdown or HTML pages.
Note: you do not need to specify the file name if \code{iframe = TRUE},
however if you do, do not include the file path.}

\item{d3Script}{a character string that allows you to specify the location of
the d3.js script you would like to use. The default is
\url{http://d3js.org/d3.v3.min.js}.}
}
\description{
Create a D3 JavaScript force directed network graph.
}
\examples{
#### Tabular data example.
# Load data
data(MisLinks)
data(MisNodes)

# Create graph
d3ForceNetwork(Links = MisLinks, Nodes = MisNodes, Source = "source",
               Target = "target", Value = "value", NodeID = "name",
               Group = "group", opacity = 0.4)

\dontrun{
#### JSON Data Example
# Load data JSON formated data into two R data frames
library(RCurl)
MisJson <- getURL("http://bit.ly/1cc3anB")
MisLinks <- JSONtoDF(jsonStr = MisJson, array = "links")
MisNodes <- JSONtoDF(jsonStr = MisJson, array = "nodes")

# Create graph
d3ForceNetwork(Links = MisLinks, Nodes = MisNodes, Source = "source",
               Target = "target", Value = "value", NodeID = "name",
               Group = "group", opacity = 0.4)
}
}

