json.array! @products.each do |product|    #@products is calling the above instance variable which was defined as "=Product.all"
  json.id product.id
  json.name product.name
  json.price product.price
  json.image_url product.image_url
  json.description product.description
end

# json.arry! @products    #this alone would return all the objects as individual hashes. but we don't want all information given (ie Created Date / modified date / any other sensitive information)