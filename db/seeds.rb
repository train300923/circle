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

tennis = Activity.create(name: 'tennis club du tourniquet', category: 'tennis', description: 'Sport tres complet, alliant puissance, strategie, adresse et endurance', price: '40€', address: '40 rue de verdun 74940 annecy-le-vieux', latitude: '45.91032', longitude: '6.15853')
tennis_photo = URI.open("https://time.com/shopping/static/acf0d86662eed64a9e6c17d3429f0bca/57e17/best-tennis-rackets.jpg")
tennis.photo.attach(io: tennis_photo, filename: "tennis.png", content_type: "image/png")
crossfit = Activity.create(name: 'gym de peros guerrec', category: 'crossfit', description: 'Activite de gym tres energetique qui va vous faire demarrer la journee sur le bon pied!', price: '10€', address: "15 rue d'anjou 78000 versailles", latitude: '48.79739', longitude: '2.12640')
crossfit_photo = URI.open("https://usercontent.one/wp/www.crossfitlarochelle.com/wp-content/uploads/2022/09/le-crossfit-pour-femme-enceinte-scaled-e1662456440958.jpg")
crossfit.photo.attach(io: crossfit_photo, filename: "crossfit.png", content_type: "image/png")
opera = Activity.create(name: 'opera garnier', category: 'opera', description: 'magnifique Lac des Cygnes, standing ovation!', price: '80€', address: "place de l'opera 75009 paris", latitude: '48.87266', longitude: '2.33276')
opera_photo = URI.open("https://www.opera-comique.com/sites/default/files/styles/width_1440px/public/2021-08/OperaComique_StefanBrion_1920x1080.png")
opera.photo.attach(io: opera_photo, filename: "opera.png", content_type: "image/png")

[tennis, crossfit, opera].each(&:save)
