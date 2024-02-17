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

tennis = Activity.create(name: 'tennis', category: 'sport', description: 'Sport tres complet, alliant puissance, strategie, adresse et endurance', price: '40€', address: '40 rue de verdun 74940 annecy-le-vieux', latitude: '45.91032', longitude: '6.15853')
tennis_photo = URI.open("https://images.pexels.com/photos/6827083/pexels-photo-6827083.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
crossfit = Activity.create(name: 'crossfit', category: 'sport', description: 'Activite de gym tres energetique qui va vous faire demarrer la journee sur le bon pied!', price: '10€', address: "15 rue d'anjou 78000 versailles", latitude: '48.79739', longitude: '2.12640')
crossfit_photo = URI.open("https://images.pexels.com/photos/1566414/pexels-photo-1566414.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
opera = Activity.create(name: 'opera', category: 'culture', description: 'magnifique Lac des Cygnes, standing ovation!', price: '80€', address: "place de l'opera 75009 paris", latitude: '48.87266', longitude: '2.33276')
opera_photo = URI.open("https://images.pexels.com/photos/2372945/pexels-photo-2372945.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")

[tennis, crossfit, opera].each(&:save)
