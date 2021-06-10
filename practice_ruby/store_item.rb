# store items

# ruby syntax
# item1 = {:item_name => "soda", :item_brand => "Coca Cola", :item_price => 2.50}
# item2 = {:item_name => "chips", :item_brand => "Lays", :item_price => 1.25}
# item3 = {:item_name => "candy", :item_brand => "Snickers", :item_price => 1.00}

# p "I am selling #{item1[:item_brand]} #{item1[:item_name]} and it costs $#{item1[:item_price]}."
# p "I am selling #{item2[:item_brand]} #{item2[:item_name]} and it costs $#{item2[:item_price]}."
# p "I am selling #{item3[:item_brand]} #{item3[:item_name]} and it costs $#{item3[:item_price]}."


# # java syntax
# item1 = {item_name: "soda", item_brand: "Coca Cola", item_price: 2.50}
# item2 = {item_name: "chips", item_brand: "Lays", item_price: 1.25}
# item3 = {item_name: "candy", item_brand: "Snickers", item_price: 1.00}

# p "I am selling #{item1[:item_brand]} #{item1[:item_name]} and it costs $#{item1[:item_price]}."
# p "I am selling #{item2[:item_brand]} #{item2[:item_name]} and it costs $#{item2[:item_price]}."
# p "I am selling #{item3[:item_brand]} #{item3[:item_name]} and it costs $#{item3[:item_price]}."


# class
class Store_Item
  def initialize(input_options)
    @item_name = input_options[:item_name]
    @item_brand = input_options[:item_brand]
    @item_price = input_options[:item_price]
  end

  def print_info
    p @item_name
    p @item_brand
    p @item_price
  end

  def new_item_name=(item_name)
    @item_name = item_name
  end
end

store_item1 = Store_Item.new({:item_name => "soda", :item_brand => "Coca Cola", :item_price => 2.50})
store_item1.print_info
p "Need to change item name..."
store_item1.new_item_name="pop"
p "Print out list with new item"
store_item1.print_info