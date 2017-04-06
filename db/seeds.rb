# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Caught.destroy_all
Pokemon.destroy_all

Pokemon.create(name:'Magmar',description:'fire')
Pokemon.create(name:'Flareon',description:'fire')
Pokemon.create(name:'Golduck',description:'Water')
Pokemon.create(name:'Alakazam',description:'Psychic')
Pokemon.create(name:'Charmander',description:'fire')
Pokemon.create(name:'Squirtle',description:'Water')
Pokemon.create(name:'Eve',description:'Normal')
Pokemon.create(name:'Blazechicken',description:'fire')
Pokemon.create(name:'Venasaur',description:'grass')



@user_names = ["Donatello", "Botticelli", "Michelangelo", "Raphael", "Titian", "Durer", "Caravaggio", "Rubens", "Bernini", "Rembrandt", "Pissarro", "Manet", "Degas", "Cezanne", "Monet", "Renoir", "Cassatt", "Gauguin", "Munch", "Klimt", "Matisse", "Picasso", "Kandinsky", "Chagall", "Seurat", "Magritte", "Escher", "Rothko", "Dali", "Kahlo", "Pollock", "Warhol", "Vettriano", "Da Vinci", "El Greco", "Winslow Homer", "Paul Klee", "Edward Hopper", "Diego Rivera", "Vincent", "Joan Miro", "Ansel Adams"]


@user_names.each do |p|
	User.create(email: "#{p}@#{p}.cl", name: p, password: 123456)
	a = User.last
	Caught.create(user_id: a.id, pokemon_id: rand(687..780), level: rand(5..30) )
end