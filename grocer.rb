def consolidate_cart(cart)
  #translate array of hashes (cart) into a hash
  hash_cart = cart.reduce({}) do |memo, (key, value)|
    memo[key] = value
  end

  #add a count of one to single items
  
  #increment count for duplicates
  
  
end

def apply_coupons(cart, coupons)
  
end

def apply_clearance(cart)
  
end

def checkout(cart, coupons)
  
end




