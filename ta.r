setwd("C:/Users/magina/Desktop/tem")
library(RCurl)
library(rvest)
url = "http://www.imdb.com/search/title?%20count=100&release_date=2016,2016&title_type=feature"
a = read_html(url)
y <- html_nodes(a,'.ratings-bar+ .text-muted')
