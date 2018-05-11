require 'unirest'

# # INDEX ACTION
# response = Unirest.get("http://localhost:3000/api/products")
# puts JSON.pretty_generate(response.body)

# # SHOW ACTION
# response = Unirest.get("http://localhost:3000/api/products/1")
# puts JSON.pretty_generate(response.body)

# CREATE ACTION
# response = Unirest.post(
#                         "http://localhost:3000/api/products",
#                         parameters: {
#                                       name: "Bugatti Veyron 16.4 SS",
#                                       price: "2400000",
#                                       description: "bugatti continued the brand tradition of developing super sport versions of successful models with the veyron 16.4 super sport. the veyron 16.4 super sport expanded the limits of possibility in the automotive sector even further and set new benchmarks.",
#                                       image_url: "https://rmsothebys-cache.azureedge.net/c/8/8/1/0/2/c88102723fad47d34d8c3a286ac13cd539e6498d.jpg"
#                                       }
#                         )
# puts JSON.pretty_generate(response.body)


# UPDATE ACTION
# product_id = 8
# runner_params = {
#                   name: "Bugatti Veyron 16.4 Super Sport"
#                   }

# response = Unirest.patch(
#                           "http://localhost:3000/api/products/#{product_id}",
#                           parameters: runner_params
#                           )

# product_hash = response.body
# puts JSON.pretty_generate(product_hash)




# DESTROY ACTION
product_id = 8
response = Unirest.delete("http://localhost:3000/api/products/#{product_id}")
data = response.body
puts JSON.pretty_generate(data)
