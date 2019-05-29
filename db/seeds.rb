# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying products"
Product.destroy_all

puts "creating products"

  caravanone = Product.create(user_id: 1, name: 'Roulotte typique en bois', description: "Roulotte entièrement équipée idéale pour un couple", price: 50, address: "30 Rue Oberkampf, 75011 Paris")
  caravanone.remote_photo_url = "https://assets.catawiki.nl/assets/2016/2/15/c/9/d/c9daf240-d3f4-11e5-8ae8-d7bf860fd2ae.jpg"
  caravanone.save!

  caravantwo = Product.create(user_id: 1, name: 'Caravane Airstream 1979', description: "Voyagez sur les routes et à travers le temps dans cette caravane aux allures vintages mais futuristes", price: 70, address: "55 avenue de la République, 75011 Paris")
  caravantwo.remote_photo_url = "https://www.sud-loire-caravanes.com/wp-content/uploads/2017/11/20171113_103044.jpg"
  caravantwo.save!

  caravanthree = Product.create(user_id: 1, name: 'Caravane Eriba Feeling', description: "Une caravane légère et maniable équipée de couchages pour 3 à 5 personnes.", price: 85, address: "121 rue Réaumur, 75002 Paris")
  caravanthree.remote_photo_url = "https://www.eriba.com/fr/assets/image-cache/images/modell-2019/caravan/eriba-feeling/ERIBA_Feeling_2019_Modelluebersicht.261d7108.jpg"
  caravanthree.save!

  caravanfour = Product.create(user_id: 1, name: 'Camping Car Evasion Titanium', description: "Un camping car possédant tout l'équipement nécessaire pour un confort optimal", price: 80, address: "98 rue Lecourbe, 75015 Paris")
  caravanfour.remote_photo_url = "https://campingcar-caravane.cdn-rivamedia.com/clients/98/origine/escc_chausson-titanium-79-eb_6634273.jpg"
  caravanfour.save!

  caravanfive = Product.create(user_id: 1, name: 'Caravane Atomic Camper', description: "Une caravane d’inspiration atomique, entièrement fonctionnelle et extrêmement accrocheuse.", price: 90, address: "165 rue Championnet, 75018 Paris")
  caravanfive.remote_photo_url = "http://bubblemania.fr/wp-content/uploads/CARAVANE-FUSEE-BUBBLE-RED0033.jpg"
  caravanfive.save!

  caravansix = Product.create(user_id: 1, name: 'Camping car Mercedes Capucine', description: "Véhicule unique. Camping-car Mercedes avec caravanes installées sur chassis et en capucine", price: 130, address: "Rue Oberkampf, 75011 Paris")
  caravansix.remote_photo_url = "http://forum-camping-car.fr/article/image/photo0008533_L.jpg"
  caravansix.save!

  caravanseven = Product.create(user_id: 1, name: 'Caravane Fendt Saphir 495', description: "Caravane totalement équipée pour des vacances reposantes", price: 85, address: "1 rue Dupuy de Lomé, 75013 Paris")
  caravanseven.remote_photo_url = "https://campingcar-caravane.cdn-rivamedia.com/clients/863/origine/loisir_fendt-saphir-490_6173099.jpg"
  caravanseven.save!

  caravaneight = Product.create(user_id: 1, name: 'Caravane Grand Luxe Hobby 540', description: "Une caravane vous offrant le confort d'un hotel de luxe, dans la plus grande mobilité", price: 150, address: "5 Place José Rizal, 75009 Paris")
  caravaneight.remote_photo_url = "http://www.isacar-loisirs.com/wp-content/uploads/2019/03/IMG_0600-450x450.jpg"
  caravaneight.save!

  caravannine = Product.create(user_id: 1, name: 'Holiday on wheels', description: "Caravane parfaite pour des vacances nomades ou simplement s'installer dans un coin sauvage", price: 80, address: "19 rue Gazan, 75014 Paris")
  caravannine.remote_photo_url = "https://media.paruvendu.fr/media-pa/9926/9/2/9926923378_1.JPG"
  caravannine.save!

  caravanten = Product.create(user_id: 1, name: 'Peugeot - Vacances familiales', description: "Ce camping-car familial vous permettra d'accueillir votre famille pour des vacances bien méritées !", price: 115, address: "222 rue de Crimée, 75019 Paris")
  caravanten.remote_photo_url = "https://www.lebosquet.com/wp-content/uploads/2018/02/camping-car.jpg"
  caravanten.save!


