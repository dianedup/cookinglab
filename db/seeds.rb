puts 'Cleaning DB...'

Dose.destroy_all
StepUtensil.destroy_all
RecipeTag.destroy_all
Ingredient.destroy_all
Utensil.destroy_all
Step.destroy_all
Recipe.destroy_all
User.destroy_all


puts 'Creating new ingredients'
citron          = Ingredient.create!(name: "citron")
jus_citron      = Ingredient.create!(name: "jus de citron")
oeuf            = Ingredient.create!(name: "oeuf")
sucre_vanillé   = Ingredient.create!(name: "sucre vanillé")
beurre          = Ingredient.create!(name: "beurre")
farine          = Ingredient.create!(name: "farine")
myrtilles       = Ingredient.create!(name: "beurre")
sucre           = Ingredient.create!(name: "sucre")
sel             = Ingredient.create!(name: "sel")
levure_chimique = Ingredient.create!(name: "levure chimique")
sucre           = Ingredient.create!(name: "sucre")
lait            = Ingredient.create!(name: "lait")
graines_pavot   = Ingredient.create!(name: "graines de pavot")
sucre_glace     = Ingredient.create!(name: "sucre glace")


puts 'Creating new utensils'
four                = Utensil.create!(name: "four")
mixeur              = Utensil.create!(name: "mixeur")
bol                 = Utensil.create!(name: "bol")
four                = Utensil.create!(name: "four")
verre_doseur        = Utensil.create!(name: "verre doseur")
presse_agrumes      = Utensil.create!(name: "presse agrumes")
moule               = Utensil.create!(name: "moule")
fouet               = Utensil.create!(name: "fouet")
casserole           = Utensil.create!(name: "casserole")
moule               = Utensil.create!(name: "moule")
papier_sulfurisé    = Utensil.create!(name: "papier sulfurisé")
zesteur             = Utensil.create!(name: "zesteur")
couteau             = Utensil.create!(name: "couteau")
spatule             = Utensil.create!(name: "spatule")
grille_a_patisserie = Utensil.create!(name: "grille à patisserie")

puts 'Creating new tags'
allegee = Tag.create!(name: "allégée")
sans_gluten = Tag.create!(name: "sans gluten")
sans_lactose = Tag.create!(name: "sans lactose")
vegetarienne = Tag.create!(name: "végétarienne")
plus_rapide = Tag.create!(name: "plus rapide")



puts 'Creating new users'
thierry  = User.create!(first_name: "thierry", last_name: "de azevedo", email: "tda@cuisine.com", password: "azerty", avatar: File.open(Rails.root.join('db/fixtures/avatars/thierry.jpg')))
diane    = User.create!(first_name: "diane", last_name: "du payrat", email: "ddp@cuisine.com", password: "azerty", avatar: File.open(Rails.root.join('db/fixtures/avatars/diane.jpg')))
melanie  = User.create!(first_name: "melanie", last_name: "rat", email: "mr@cuisine.com", password: "azerty", avatar: File.open(Rails.root.join('db/fixtures/avatars/melanie.jpg')))
matthias = User.create!(first_name: "matthias", last_name: "geoffroy", email: "mg@cuisine.com", password: "azerty", avatar: File.open(Rails.root.join('db/fixtures/avatars/matthias.jpg')))

puts 'Creating new recipes'
cake_citron_graines_pavot    = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/cake_citron_pavot.jpg')), title: "Cake au citron et graines de pavot", subtitle: "originale", description: "Aujourd'hui je vous propose la recette d'un cake extraordinaire! Un délicieux cake au citron bien moelleux, humide, bien parfumé et pas trop sucré. Bref c'est une véritable tuerie, après le cake anglais aux fruits confits, c'est mon 2e cake préféré! La recette vient d'un blog que j'adore: Fashion cooking. Je n'ai quasiment rien modifié à la recette, hormis part le temps de cuisson.", prep_time: "10 min", cook_time: "55 min", rest_time: "12 h", kind: "original", published: true, user: diane)
tarte_au_fraise              = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/tarte_aux_fraises.jpg')), title: "Tarte aux fraises", description: "Une pâte brisée maison, une bonne crème pâtissière à la vanille et des belles fraises, c’est tout ce qu’il vous faut pour réaliser cette recette de tarte aux fraises facile à la maison. Réutilisez cette base de tarte pour décliner en tarte aux framboises, aux mûres, aux myrtilles… ou tout autre fruit qu’il vaut mieux manger cru que cuit au four.", user: thierry)
tajine_poulet_citron_confits = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/tajine_poulet_citrons_confits.jpg')), title: "Tajine de poulet aux citrons confits ", description: "Encore une recette réalisée lors de mon périple à Marrakech. C’était GENIAL. J’ai adoré cette recette de tajine, facile à réaliser, pleine de saveurs et de parfums. A faire et à refaire.", user: melanie)

puts 'Creating steps'
cake_citron_graines_pavot_step_1 = Step.create!(recipe: cake_citron_graines_pavot, position: 1, content: "Dans un bol, battre vivement le beurre et le sucre jusqu’à obtenir un mélange crémeux. Ajouter ensuite les ingrédients restants dans l’ordre et bien mélanger entre chaque ajout. Verser la préparation dans un moule à cake beurré. Enfourner dans un four préchauffé à 180°C et cuire 40 à 45mn (jusqu’à ce que la lame d’un couteau ressorte propre).  - Laisser le cake tiédir 10mn sans le démouler.")
cake_citron_graines_pavot_step_2 = Step.create!(recipe: cake_citron_graines_pavot, position: 2, content: "Pendant ce temps, mélanger les ingredients du 1er glaçage : 80g de sucre glace et le jus d'un demi citron, on doit obtenir un mélange plutôt liquide. Piquer le cake avec le couteau et verser doucement ce glaçage sur le dessus du cake toujours dans son moule pour l'imbiber. Laisser le cake absorber le glaçage et refroidir pendant environ 20 min.")
cake_citron_graines_pavot_step_3 = Step.create!(recipe: cake_citron_graines_pavot, position: 3, content: "Démouler ensuite le cake et le poser sur une grille à pâtisserie. Mélanger les ingrédients du 2e glaçage : 150g de sucre glace et le jus d’un demi citron, on doit il obtenir un mélange pas trop liquide et bien blanc (ajouter un peu de sucre glace si il est trop liquide). Verser doucement la moitié du glaçage blanc sur le dessus du cake, étaler jusqu’aux bords avec une spatule. Verser ensuite le reste du glaçage blanc sur le dessus du cake et le laisser couler sur les bords. Parsemer immédiatement de graines de pavots et de zeste de citron pour décorer le glaçage. Laisser ensuite le glaçage figer 12h sur la grille à pâtisserie sans le toucher.")

puts 'Creating doses'
Dose.create!(step: cake_citron_graines_pavot_step_1, ingredient: beurre, quantity: 100, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_step_1, ingredient: sucre, quantity: 150, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_step_1, ingredient: oeuf, quantity: 2)
Dose.create!(step: cake_citron_graines_pavot_step_1, ingredient: citron, unit: 'zeste')
Dose.create!(step: cake_citron_graines_pavot_step_1, ingredient: jus_citron, quantity: 10, unit: 'cl')
Dose.create!(step: cake_citron_graines_pavot_step_1, ingredient: farine, quantity: 200, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_step_1, ingredient: levure_chimique, quantity: 1, unit: 'sachet')
Dose.create!(step: cake_citron_graines_pavot_step_1, ingredient: sel, quantity: 2, unit: 'pincée')
Dose.create!(step: cake_citron_graines_pavot_step_1, ingredient: lait, quantity: 5, unit: 'cl')
Dose.create!(step: cake_citron_graines_pavot_step_1, ingredient: graines_pavot, quantity: 2, unit: 'cuillères à soupe')

Dose.create!(step: cake_citron_graines_pavot_step_2, ingredient: sucre_glace, quantity: 80, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_step_2, ingredient: jus_citron, quantity: 5, unit: 'cl')

Dose.create!(step: cake_citron_graines_pavot_step_3, ingredient: sucre_glace, quantity: 150, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_step_3, ingredient: jus_citron, quantity: 5, unit: 'cl')


puts 'Creating step utensils'
StepUtensil.create!(step: cake_citron_graines_pavot_step_1, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_step_1, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_step_1, utensil: moule)
StepUtensil.create!(step: cake_citron_graines_pavot_step_1, utensil: four)
StepUtensil.create!(step: cake_citron_graines_pavot_step_1, utensil: couteau)

StepUtensil.create!(step: cake_citron_graines_pavot_step_2, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_step_2, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_step_2, utensil: couteau)

StepUtensil.create!(step: cake_citron_graines_pavot_step_3, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_step_3, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_step_3, utensil: spatule)
StepUtensil.create!(step: cake_citron_graines_pavot_step_3, utensil: grille_a_patisserie)

puts 'Creating recipe tags'
RecipeTag.create!(recipe: cake_citron_graines_pavot, tag: allegee)



puts 'Finished!'




