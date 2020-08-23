require 'pry'

def find_item_by_name_in_collection (name,collection)
  counter = 0
  while counter < collection.length
    if collection[counter][:item] == name
      return collection[counter]
    end
    counter += 1
  end
end
 
 

def consolidate_cart(cart)
  counter = 0
  niu_cart = []
  
  while counter < cart.length
    niu_cart_item = find_item_by_name_in_collection(cart[counter][:item], niu_cart)
    if niu_cart_item
      niu_cart_item[:count] += 1
    else
      niu_cart_item = {
        :item => cart[counter][:item],
        :price => cart[counter][:price],
        :clearance => cart[counter][:clearance],
        :count => 1
      }
      niu_cart << niu_cart_item
    end
    counter += 1
  end
  niu_cart
end


  