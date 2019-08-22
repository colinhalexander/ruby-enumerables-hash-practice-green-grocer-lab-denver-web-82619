def consolidate_cart(cart)
  #translate array of hashes (cart) into a hash
  hash_cart = cart.reduce({}) do |memo, pair|
    pair.each do |(key, value)|
      if !memo[key]
        memo[key] = value
        memo[key][:count] = 1
      else 
        memo[key][:count] += 1
      end
    end
    memo
  end
end

def apply_coupons(cart, coupons)
  #find any matching coupons
  
  #if yes, apply coupon to item
  
  #create "item w/coupon" key-value pair, subtract from count
  #if no remainder, delete original item
end

def apply_clearance(cart)
  
end

def checkout(cart, coupons)
  
end




