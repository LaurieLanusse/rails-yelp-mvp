puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "01 39 48 38 47", category: "japanese" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "06 39 48 58 30", category: "french" }
otacos = { name: "OTacos", address: "80 cours lieutaud, Marseille", phone_number: "06 25 07 38 98", category: "belgian" }
marie = { name: "Chez Marie", address: "140 cours lieutaud, Marseille", phone_number: "03 49 49 58 20", category: "chinese" }
tonton = { name: "Chez tonton", address: "3 rue de la libération, Paris", phone_number: "01 30 59 08 34", category: "french" }

[ dishoom, pizza_east, otacos, marie, tonton ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
