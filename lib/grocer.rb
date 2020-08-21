



def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
collection.map do |item_hash|
    if name == item_hash[:item]
      
    return item_hash
    end
  end
  puts "item not in cart"
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart= []
   cart.select do |element| 
    if cart.count(element) == 1
      element[:count]= 1
      new_cart.push(element)
    else element[:count]= cart.count(element)
      new_cart.push(element)
  
    end 
  end
  new_cart
end

# borrrowed from stack overflow duplicate = array.select{|element| array.count(element) > 1 }