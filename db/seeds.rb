# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
Activity.destroy_all
Booking.destroy_all

guilhem = User.create(first_name: 'guilhem', last_name: 'maffre', address: '12 rue des renardeaux 75011 paris', phone_number: '061245654348', biography: "j'ai pour habitude de me considerer comme un codeur fou", latitude: '48.86481', longitude: '2.38762', email: 'guilhem@circle.com', password: 'password1')
kaouthar = User.create(first_name: 'kaouthar', last_name: 'elherch', address: '45 avenue du chateau 78000 versailles', phone_number: '0612486323', biography: "j'adore la gym!", latitude: '48.80528', longitude: '2.12227', email: 'kaouthar@circle.com', password: 'password2')

tennis1 = Activity.create(name: 'Tennis Club du Tourniquet', category: 'Tennis', description: 'Sport tres complet, alliant puissance, strategie, adresse et endurance', price: '40€', address: '40 Rue de Verdun 74940 Annecy-le-Vieux', latitude: '45.91032', longitude: '6.15853')
tennis1_photo = URI.open("https://time.com/shopping/static/acf0d86662eed64a9e6c17d3429f0bca/57e17/best-tennis-rackets.jpg")
tennis1.photo.attach(io: tennis1_photo, filename: "tennis1.png", content_type: "image/png")
tennis2 = Activity.create(name: 'Tennis Club de Castelnaudary', category: 'Tennis', description: 'Magnifique complexe sportif tres moderne, il y a plus de 10 terrains', price: '35€', address: 'Avenue du Maréchal Leclerc 11400 Castelnaudary', latitude: '43.31488', longitude: '1.95581')
tennis2_photo = URI.open("https://image.ville-data.com/300/court-de-tennis.jpg")
tennis2.photo.attach(io: tennis2_photo, filename: "tennis2.png", content_type: "image/png")
tennis3 = Activity.create(name: 'Tennis Club de Beziers', category: 'Tennis', description: 'Club tres dynamique accueillant la Nestea Cup, vous serez tres bien recu. Nous avons 10 terrains greenset, quick et terre battue', price: '20€', address: '15 avenue jean-baptiste blattes 34500 Béziers', latitude: '43.34011', longitude: '3.19099')
tennis3_photo = URI.open("https://www.beziers-mediterranee.com/wp-content/uploads/wpetourisme/Tennis-Club-Biterrois--3-.jpg")
tennis3.photo.attach(io: tennis3_photo, filename: "tennis3.png", content_type: "image/png")

crossfit1 = Activity.create(name: 'Gymclub de Versailles', category: 'Crossfit', description: 'Activite de gym tres energetique qui va vous faire demarrer la journee sur le bon pied!', price: '10€', address: "15 Rue d'Anjou 78000 Versailles", latitude: '48.79739', longitude: '2.12640')
crossfit_photo = URI.open("https://usercontent.one/wp/www.crossfitlarochelle.com/wp-content/uploads/2022/09/le-crossfit-pour-femme-enceinte-scaled-e1662456440958.jpg")
crossfit1.photo.attach(io: crossfit_photo, filename: "crossfit.png", content_type: "image/png")

opera1 = Activity.create(name: 'Opera Garnier', category: 'Opera', description: 'Magnifique opera "Lac des Cygnes", standing ovation!', price: '80€', address: "Place de l'Opera 75009 Paris", latitude: '48.87266', longitude: '2.33276')
opera_photo = URI.open("https://www.opera-comique.com/sites/default/files/styles/width_1440px/public/2021-08/OperaComique_StefanBrion_1920x1080.png")
opera1.photo.attach(io: opera_photo, filename: "opera.png", content_type: "image/png")

[tennis1, tennis2, tennis3, crossfit1, opera1].each(&:save)
