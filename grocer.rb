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
  if matching_coupons.length == 0 
    return cart
  end

  i = 0
  while i < matching_coupons.length do
    item = matching_coupons[i][:item]
    cart_count = cart[item][:count]
    coupon_num = matching_coupons[i][:num]
    p cart
    if cart_count >= coupon_num
      if !cart["#{item} W/COUPON"]
        cart["#{item} W/COUPON"] = cart[item]
        
        cart["#{item} W/COUPON"][:count] = 0
          
        cart["#{item} W/COUPON"][:price] = matching_coupons[i][:cost] / coupon_num
      end
      
      cart["#{item} W/COUPON"][:count] += coupon_num
        
      cart[item][:count] -= coupon_num
      
      if cart[item][:count] == 0 
        cart.delete(item)
      end
    end
    p cart
    i += 1
  end
  cart
end

def apply_clearance(cart)
  
end

def checkout(cart, coupons)
  
end




