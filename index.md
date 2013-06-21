<title>D3network by christophergandrud</title>

<link rel="stylesheet" href="assets/css/styles.css">

<a href="https://github.com/christophergandrud/d3Network"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://s3.amazonaws.com/github/ribbons/forkme_right_gray_6d6d6d.png" alt="Fork me on GitHub"></a>

[Christopher Gandrud](http://christophergandrud.blogspot.com/p/biocontact.html)

<section>

# d3Network

### Tools for creating D3 JavaScript directed network graphs from R.

### v0.2


---

<blockquote>Site Under Construction</blockquote>

[Mike Bostock](http://bost.ocks.org/mike/)'s [D3.js](http://d3js.org/) is great for creating [interactive network graphs](http://bl.ocks.org/mbostock/4062045) with JavaScript.  The [d3Network](https://github.com/christophergandrud/d3Network) package makes it easy to create these network graphs from [R](http://www.r-project.org/). The main idea is that you should able to take an R data frame of information about the relationships between members of a network and create full network graphs with one command.

Currently **d3Network** only supports [force directed](http://en.wikipedia.org/wiki/Force-directed_graph_drawing) network graphs. Basically, D3 assigns forces to the nodes and edges (links between the nodes) to arrange their placement and simulate movement. We'll see of examples below that make this concept intuitive sense. 


## Commands

**d3Network** currently has two basic commands for creating network graphs: <a href="#simple"><code>d3SimpleNetwork</code></a> and <a href="#forceDirect"><code>d3ForceDirected</code></a>. 

<h3 id="simple"><code>d3SimpleNetwork</code><h3>



<h3 id="forceDirect"><code>d3ForceDirected</code><h3>


</section>