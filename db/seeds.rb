# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# add some products

#clear the records first
LineItem.delete_all
Product.delete_all
Order.delete_all
Customer.delete_all
# add some products
p1=Product.new(:name => "iPhone 6", :description => "Personal digital assistant", :price =>499.99)
p1.save
p2=Product.new(:name => "Xbox 360", :description => "Game controller", :price =>299.99)
p2.save
p3=Product.new(:name => "Nintendo DS i", :description => "Video game", :price =>199.99)
p3.save
p4=Product.new(:name => "Nexus 7", :description => "Tablet", :price =>399.99)
p4.save
p5=Product.new(:name => "Surface 8", :description => "Tablet", :price =>599.99)
p5.save
p6=Product.new(:name => "Fitbit", :description => "Fitness watch", :price =>49.99)
p6.save
# add some customers
c1 = Customer.new(name: "Solomon A", phone: "222-1212", email: "abc@123.com", rating: 3); c1.save
c1 = Customer.new(name: "S Antony", phone: "222-1234", email: "def@123.com", rating: 4); c1.save
c1 = Customer.new(name: "M Bowman", phone: "222-1245", email: "ghi@123.com", rating: 5); c1.save
c1 = Customer.new(name: "M Singh", phone: "222-1267", email: "jkl@123.com", rating: 2); c1.save
c1 = Customer.new(name: "V Krotov", phone: "222-1289", email: "bcd@123.com", rating: 5); c1.save

customers = Customer.all
customers.each do |customer|
    ordercount = rand(1..10)
    ordercount.times do
      o1 = Order.new(customer_id: customer.id, order_date: Time.now+rand(-5..5)*86400)
      customer.orders<< o1
      lineItemCount = rand(1..3)
      lineItemCount.times do
          p1 = Product.all[rand(0..5)]
          LineItem.create!(order: o1, product: p1, quantity: rand(1..5))
      end
    end
end


