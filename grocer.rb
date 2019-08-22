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
  i = 0
  while i < matching_coupons.length do
    item = "#{matching_coupons[i][:item]}"
    cart_count = cart[item][:count]
    coupon_num = matching_coupons[i][:num]
    
    if cart_count >= coupon_num
      
      if cart_count % coupon_num == 0
        cart["#{item} W/COUPON"] = cart[item]
        price_per_item = matching_coupons[i][:cost] / matching_coupons[i][:num]
        cart["#{item} W/COUPON"][:price] = price_per_item
        cart.delete[item]
        
      else
        
      end
    end
    i += 1
  end
  
  #create "item w/coupon" key-value pair, subtract from count
  #if no remainder, delete original item
  
end

def apply_clearance(cart)
  
end

def checkout(cart, coupons)
  
end




