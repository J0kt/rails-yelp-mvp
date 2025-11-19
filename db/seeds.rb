puts "Nettoyage de la base de données..."
Restaurant.destroy_all

puts "Création des restaurants..."

dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "01 23 45 67 89", category: "italian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "01 23 45 67 89", category: "italian"}
tour_d_argent = {name: "La Tour d'Argent", address: "15 Quai de la Tournelle, 75005 Paris", phone_number: "01 43 54 23 31", category: "french"}
sushi_samba = {name: "Sushi Samba", address: "110 Bishopsgate, London EC2N 4AY", phone_number: "04 12 34 56 78", category: "japanese"}
chez_leon = {name: "Chez Léon", address: "Place de la Bourse, 1000 Bruxelles", category: "belgian"}

[dishoom, pizza_east, tour_d_argent, sushi_samba, chez_leon].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Terminé ! #{Restaurant.count} restaurants créés."
