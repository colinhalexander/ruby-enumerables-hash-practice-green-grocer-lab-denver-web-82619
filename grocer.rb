def consolidate_cart(cart)
  #translate array of hashes (cart) into a hash
  hash_cart = cart.reduce({}) do |memo, pair|
    pair.each do |(key, value)|
      if !memo[key]
        memo[key] = value
        key[:count] = 1
      else 
        key[:count] += 1
      end
    end
    p memo
  end
  hash_cart
  #add a count of one to single items
  
  #increment count for duplicates
  
  
end






