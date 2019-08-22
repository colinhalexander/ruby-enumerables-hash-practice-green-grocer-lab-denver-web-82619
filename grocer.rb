def consolidate_cart(cart)
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
  matching_coupons = coupons.select do |n|
    cart[n[:item]]
  end
  if matching_coupons.length == 0 return cart
  
  #apply matching coupon to item
  count = 0
  while count < matching_coupons.length do
    cart["#{mat}"]
  end
  
  #create "item w/coupon" key-value pair, subtract from count
  #if no remainder, delete original item
end

def apply_clearance(cart)
  
end

def checkout(cart, coupons)
  
end




