# item1 = { type: "tennis balls", color: "yellow", price: 5 }
# item2 = { type: "basketballs", color: "orange", price: 15 }
# item3 = { type: "footballs", color: "brown", price: 25 }

# p "My store sells #{item1[:color]} #{item1[:type]} for $#{item1[:price]}!"

# p "My store sells #{item2[:color]} #{item2[:type]} for $#{item2[:price]}!"

# p "My store sells #{item3[:color]} #{item3[:type]} for $#{item3[:price]}!"

# item1 = { "color" => "yellow", "price" => 5 }
# item2 = { "color" => "orange", "price" => 15 }
# item3 = { "color" => "brown", "price" => 25 }

# item1 = { :color => "yellow", :price => 5 }
# item2 = { :color => "orange", :price => 15 }
# item3 = { :color => "brown", :price => 25 }

class Item1
  def initialize(input_type, input_color, input_price)
    @type = input_type
    @color = input_color
    @price = input_price
  end

  def print_info
    p "My store sells #{@color} #{@type} for $#{@price}!"
  end
end

item1 = Item1.new("tennis balls", "yellow", "5")
p item1.print_info
