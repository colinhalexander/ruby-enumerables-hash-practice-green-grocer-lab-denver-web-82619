def consolidate_cart(cart)
  #translate array of hashes (cart) into a hash
  hash_cart = cart.reduce({}) do |memo, (key, value)|
    p memo
    p key
    p value
    memo
  end
  hash_cart
  #add a count of one to single items
  
  #increment count for duplicates
  
  
end






