library(fiery)

# Create a New App
app <- Fire$new()

# Setup the data every time it starts
app$on('start', function(server, ...) {
  server$set_data('visits', 0)
  server$set_data('cycles', 0)
  server$host = "169.254.189.71"
  print(server$host)
  print(server$port)
})

# Count the number of cycles (internal loops)
app$on('cycle-start', function(server, ...) {
  server$set_data('cycles', server$get_data('cycles') + 1)
})

# Count the number of requests
app$on('before-request', function(server, ...) {
  server$set_data('visits', server$get_data('visits') + 1)
})


app$on('header', function(server, ...) {
  server$set_data('header', TRUE)
  TRUE
  
})
# Handle requests
app$on('request', function(server, request,...) {
  response <- request$respond()
  response$status <- 200L
  response$body <-f
  response$type <- 'text'
  response$set_header(a1,a2)
  response$set_header(b1,b2)
  response$set_header(c1,c2)
  response$set_header("Content-Type","json")
  print(response$has_header)
})

# Show number of requests in the console
app$on('after-request', function(server, ...) {?to
  message(server$get_data('visits'))
  flush.console()
})



# Be polite
app$on('end', function(server) {
  message('Goodbye')
  flush.console()
})

app$ignite(showcase = TRUE)

#> 1
#> Ending...
#> Goodbye