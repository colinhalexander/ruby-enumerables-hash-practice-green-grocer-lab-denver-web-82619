def consolidate_cart(cart)
  #translate array of hashes (cart) into a hash
  hash_cart = cart.reduce({}) do |memo, pair|
    pair.each do |pair|
      p pair
    end
    memo
  end
  hash_cart
  #add a count of one to single items
  
  #increment count for duplicates
  
  
end






