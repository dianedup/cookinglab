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
lait            = Ingredient.create!(name: "lait")
graines_pavot   = Ingredient.create!(name: "graines de pavot")
sucre_glace     = Ingredient.create!(name: "sucre glace")
lait_coco       = Ingredient.create!(name: "lait de coco")
beurre_vegetal  = Ingredient.create!(name: "Beurre végétal")
farine_riz      = Ingredient.create!(name: "farine de riz")


puts 'Creating new utensils'
four                = Utensil.create!(name: "four")
mixeur              = Utensil.create!(name: "mixeur")
bol                 = Utensil.create!(name: "bol")
verre_doseur        = Utensil.create!(name: "verre doseur")
presse_agrumes      = Utensil.create!(name: "presse agrumes")
moule               = Utensil.create!(name: "moule")
fouet               = Utensil.create!(name: "fouet")
casserole           = Utensil.create!(name: "casserole")
papier_sulfurisé    = Utensil.create!(name: "papier sulfurisé")
zesteur             = Utensil.create!(name: "zesteur")
couteau             = Utensil.create!(name: "couteau")
spatule             = Utensil.create!(name: "spatule")
grille_a_patisserie = Utensil.create!(name: "grille à patisserie")

puts 'Creating new tags'
allegee = Tag.create!(name: "allégée")
sans_gluten = Tag.create!(name: "sans gluten")
sans_lactose = Tag.create!(name: "sans lactose")
vegan = Tag.create!(name: "vegan")
plus_rapide = Tag.create!(name: "plus rapide")
version_mini = Tag.create!(name: "version mini")

puts 'Creating new users'
thierry  = User.create!(first_name: "thierry", last_name: "de azevedo", email: "tda@cuisine.com", password: "azerty", avatar: File.open(Rails.root.join('db/fixtures/avatars/thierry.jpg')))
diane    = User.create!(first_name: "diane", last_name: "du payrat", email: "ddp@cuisine.com", password: "azerty", avatar: File.open(Rails.root.join('db/fixtures/avatars/diane.jpg')))
melanie  = User.create!(first_name: "melanie", last_name: "rat", email: "mr@cuisine.com", password: "azerty", avatar: File.open(Rails.root.join('db/fixtures/avatars/melanie.jpg')))
matthias = User.create!(first_name: "matthias", last_name: "geoffroy", email: "mg@cuisine.com", password: "azerty", avatar: File.open(Rails.root.join('db/fixtures/avatars/matthias.jpg')))

puts 'Creating new recipes'
cake_citron_graines_pavot    = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/cake_citron_pavot.jpg')), title: "Cake au citron et graines de pavot", subtitle: "originale", description: "Aujourd'hui je vous propose la recette d'un cake extraordinaire! Un délicieux cake au citron bien moelleux, humide, bien parfumé et pas trop sucré. Bref c'est une véritable tuerie, après le cake anglais aux fruits confits, c'est mon 2e cake préféré! ", prep_time: "10 min", cook_time: "55 min", rest_time: "12 h", kind: "original", published: true, user: diane, published_on: 23/03/2019, servings: 4)
tarte_au_fraise              = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/tarte_aux_fraises.jpg')), title: "Tarte aux fraises", description: "Une pâte brisée maison, une bonne crème pâtissière à la vanille et des belles fraises, c’est tout ce qu’il vous faut pour réaliser cette recette de tarte aux fraises facile à la maison. Réutilisez cette base de tarte pour décliner en tarte aux framboises, aux mûres, aux myrtilles… ou tout autre fruit qu’il vaut mieux manger cru que cuit au four.", prep_time: "10 min", cook_time: "55 min", rest_time: "12 h", user: thierry, kind: "original", published: true, published_on: 15/03/2019, servings: 6)
tajine_poulet_citron_confits = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/tajine_poulet_citrons_confits.jpg')), title: "Tajine de poulet aux citrons confits ", description: "Encore une recette réalisée lors de mon périple à Marrakech. C’était GENIAL. J’ai adoré cette recette de tajine, facile à réaliser, pleine de saveurs et de parfums. A faire et à refaire.", prep_time: "10 min", cook_time: "55 min", rest_time: "12 h", user: melanie, kind: "original", published: true, published_on: 12/03/2019, servings: 4)
curry_de_crevettes_doux = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/curry_de_crevettes_doux.jpg')), title: "Curry de crevettes doux", description: "J’ai découvert cette recette lors de mon dernier voyage en asie. Ce curry est extrêmement riche en protéines. Il est crémeux, savoureux, légèrement épicé et ne nécessite que 20 minutes de préparation. Rapide à préparer, fait maison et beaucoup plus sain que les plats à emporter. ", prep_time: "10 min", cook_time: "55 min", rest_time: "12 h", user: thierry, kind: "original", published: true, published_on: 29/03/2019, servings: 4)
muesli_suisse = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/muesli_suisse.jpg')), title: "Muesli Suisse", description: "Très prisée des sportifs, ce muesli riche en fibres. Etant donné qu'elles macèrent dans votre estomac, les graines de lin doivent toujours être consommées avec suffisamment de liquide. La consommation de graines de lin est particulièrement recommandée le matin, car elles stimulent le métabolisme et la digection.", prep_time: "10 min", cook_time: "5 min", rest_time: "12 h", user: thierry, kind: "original", published: true, published_on: 29/03/2019, servings: 4)
macarons_à_la_noix_de_coco = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/macarons_à_la_noix_de_coco.jpg')), title: "Macarons à la noix de coco", description: "Les macarons de noix de coco sont une vrai bombe de protéines. Ils sont parfaitement adaptées en tant que snakc après vos sessions de sport intensives, mais aussi à tout moment de la journée. De plus, la graisse contenue dans la noix de coco est censée avoir un effet positif sur le cerveau.", prep_time: "30 min", cook_time: "25 min", rest_time: "2 h", user: thierry, kind: "original", published: true, published_on: 18/03/2019, servings: 24)
muesli_au_melange_de_baies = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/muesli_au_melange_de_baies.jpg')), title: "Muesli au mélange de baies", description: "Ce muesli au goût très frais si les baies sont congelés et décongèlent lentement, doit être préparer idéalement la veille au soir en le laissant tremper toute la nuit. dans le cas où le muesli serait trop sec, ajouter du lait et mélanger.", prep_time: "10 min", cook_time: "5 min", rest_time: "8 h", user: thierry, kind: "original", published: true, published_on: 29/03/2019, servings: 1)

puts 'Creating steps'
cake_citron_graines_pavot_step_1 = Step.create!(recipe: cake_citron_graines_pavot, position: 1, content: "Dans un bol, battre vivement le beurre et le sucre jusqu’à obtenir un mélange crémeux. Ajouter ensuite les ingrédients restants dans l’ordre et bien mélanger entre chaque ajout. Verser la préparation dans un moule à cake beurré. Enfourner dans un four préchauffé à 180°C et cuire 40 à 45mn (jusqu’à ce que la lame d’un couteau ressorte propre).  - Laisser le cake tiédir 10mn sans le démouler.")
cake_citron_graines_pavot_step_2 = Step.create!(recipe: cake_citron_graines_pavot, position: 2, content: "Pendant ce temps, mélanger les ingredients du 1er glaçage : 80g de sucre glace et le jus d'un demi citron, on doit obtenir un mélange plutôt liquide. Piquer le cake avec le couteau et verser doucement ce glaçage sur le dessus du cake toujours dans son moule pour l'imbiber. Laisser le cake absorber le glaçage et refroidir pendant environ 20 min.")
cake_citron_graines_pavot_step_3 = Step.create!(recipe: cake_citron_graines_pavot, position: 3, content: "Démouler ensuite le cake et le poser sur une grille à pâtisserie. Mélanger les ingrédients du 2e glaçage : 150g de sucre glace et le jus d’un demi citron, on doit il obtenir un mélange pas trop liquide et bien blanc (ajouter un peu de sucre glace si il est trop liquide). Verser doucement la moitié du glaçage blanc sur le dessus du cake, étaler jusqu’aux bords avec une spatule. Verser ensuite le reste du glaçage blanc sur le dessus du cake et le laisser couler sur les bords. Parsemer immédiatement de graines de pavots et de zestes de citron pour décorer le glaçage. Laisser ensuite le glaçage figer 12h sur la grille à pâtisserie sans le toucher.")

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

################################################################################
# VARIANT 1
################################################################################

puts 'Creating recipe variant 1'
cake_citron_graines_pavot_variant_1    = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/cake_citron_pavot_sans_lactose.jpg')), title: "Cake au citron et graines de pavot", subtitle: "Sans lactose", description: "J'aime beaucoup la recette de cake au citron et graines de pavot de Diane et j'ai voulu la tenter sans lactose. Un vrai délice aussi pour les allergiques !", prep_time: "10 min", cook_time: "55 min", rest_time: "12 h", kind: "variant", published: true, user: matthias, original_recipe: cake_citron_graines_pavot)


cake_citron_graines_pavot_variant_1_step_1 = Step.create!(recipe: cake_citron_graines_pavot_variant_1, position: 1, content: "Dans un bol, battre vivement le beurre végétal (d'amande, de noix de cajou, ou de noisette) et le sucre jusqu’à obtenir un mélange crémeux. Ajouter ensuite les ingrédients restants dans l’ordre et bien mélanger entre chaque ajout. Verser la préparation dans un moule à cake beurré. Enfourner dans un four préchauffé à 180°C et cuire 40 à 45mn (jusqu’à ce que la lame d’un couteau ressorte propre).  - Laisser le cake tiédir 10mn sans le démouler.")
cake_citron_graines_pavot_variant_1_step_2 = Step.create!(recipe: cake_citron_graines_pavot_variant_1, position: 2, content: "Pendant ce temps, mélanger les ingredients du 1er glaçage : 80g de sucre glace et le jus d'un demi citron, on doit obtenir un mélange plutôt liquide. Piquer le cake avec le couteau et verser doucement ce glaçage sur le dessus du cake toujours dans son moule pour l'imbiber. Laisser le cake absorber le glaçage et refroidir pendant environ 20 min.")
cake_citron_graines_pavot_variant_1_step_3 = Step.create!(recipe: cake_citron_graines_pavot_variant_1, position: 3, content: "Démouler ensuite le cake et le poser sur une grille à pâtisserie. Mélanger les ingrédients du 2e glaçage : 150g de sucre glace et le jus d’un demi citron, on doit il obtenir un mélange pas trop liquide et bien blanc (ajouter un peu de sucre glace si il est trop liquide). Verser doucement la moitié du glaçage blanc sur le dessus du cake, étaler jusqu’aux bords avec une spatule. Verser ensuite le reste du glaçage blanc sur le dessus du cake et le laisser couler sur les bords. Parsemer immédiatement de graines de pavots et de zestes de citron pour décorer le glaçage. Laisser ensuite le glaçage figer 12h sur la grille à pâtisserie sans le toucher.")


Dose.create!(step: cake_citron_graines_pavot_variant_1_step_1, ingredient: beurre_vegetal, quantity: 100, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_variant_1_step_1, ingredient: sucre, quantity: 150, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_variant_1_step_1, ingredient: oeuf, quantity: 2)
Dose.create!(step: cake_citron_graines_pavot_variant_1_step_1, ingredient: citron, unit: 'zeste')
Dose.create!(step: cake_citron_graines_pavot_variant_1_step_1, ingredient: jus_citron, quantity: 10, unit: 'cl')
Dose.create!(step: cake_citron_graines_pavot_variant_1_step_1, ingredient: farine, quantity: 200, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_variant_1_step_1, ingredient: levure_chimique, quantity: 1, unit: 'sachet')
Dose.create!(step: cake_citron_graines_pavot_variant_1_step_1, ingredient: sel, quantity: 2, unit: 'pincée')
Dose.create!(step: cake_citron_graines_pavot_variant_1_step_1, ingredient: lait_coco, quantity: 5, unit: 'cl')
Dose.create!(step: cake_citron_graines_pavot_variant_1_step_1, ingredient: graines_pavot, quantity: 2, unit: 'cuillères à soupe')

Dose.create!(step: cake_citron_graines_pavot_variant_1_step_2, ingredient: sucre_glace, quantity: 80, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_variant_1_step_2, ingredient: jus_citron, quantity: 5, unit: 'cl')

Dose.create!(step: cake_citron_graines_pavot_variant_1_step_3, ingredient: sucre_glace, quantity: 150, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_variant_1_step_3, ingredient: jus_citron, quantity: 5, unit: 'cl')



StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_1, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_1, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_1, utensil: moule)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_1, utensil: four)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_1, utensil: couteau)

StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_2, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_2, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_2, utensil: couteau)

StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_3, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_3, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_3, utensil: spatule)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_3, utensil: grille_a_patisserie)


RecipeTag.create!(recipe: cake_citron_graines_pavot_variant_1, tag: allegee)
RecipeTag.create!(recipe: cake_citron_graines_pavot_variant_1, tag: sans_lactose)
RecipeTag.create!(recipe: cake_citron_graines_pavot_variant_1, tag: vegan)


################################################################################
# VARIANT 2
################################################################################

puts 'Creating recipe variant 2'
cake_citron_graines_pavot_variant_2    = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/cake_citron_pavot_sans_gluten.jpg')), title: "Cake au citron et graines de pavot", subtitle: "Sans gluten", description: "Super recette, merci Diane, et moi je préfère cette version sans gluten. Goutez-y, vous verrez c'est super bon !", prep_time: "10 min", cook_time: "55 min", rest_time: "12 h", kind: "variant", published: true, user: melanie, original_recipe: cake_citron_graines_pavot)

cake_citron_graines_pavot_variant_2_step_1 = Step.create!(recipe: cake_citron_graines_pavot_variant_2, position: 1, content: "Dans un bol, battre vivement le beurre et le sucre jusqu’à obtenir un mélange crémeux. Ajouter ensuite les ingrédients restants dans l’ordre et bien mélanger entre chaque ajout. Je vous recommande ici la farine de riz qui donnera une bonne texture au cake. Verser la préparation dans un moule à cake beurré. Enfourner dans un four préchauffé à 180°C et cuire 40 à 45mn (jusqu’à ce que la lame d’un couteau ressorte propre).  - Laisser le cake tiédir 10mn sans le démouler.")
cake_citron_graines_pavot_variant_2_step_2 = Step.create!(recipe: cake_citron_graines_pavot_variant_2, position: 2, content: "Pendant ce temps, mélanger les ingredients du 1er glaçage : 80g de sucre glace et le jus d'un demi citron, on doit obtenir un mélange plutôt liquide. Piquer le cake avec le couteau et verser doucement ce glaçage sur le dessus du cake toujours dans son moule pour l'imbiber. Laisser le cake absorber le glaçage et refroidir pendant environ 20 min.")
cake_citron_graines_pavot_variant_2_step_3 = Step.create!(recipe: cake_citron_graines_pavot_variant_2, position: 3, content: "Démouler ensuite le cake et le poser sur une grille à pâtisserie. Mélanger les ingrédients du 2e glaçage : 150g de sucre glace et le jus d’un demi citron, on doit il obtenir un mélange pas trop liquide et bien blanc (ajouter un peu de sucre glace si il est trop liquide). Verser doucement la moitié du glaçage blanc sur le dessus du cake, étaler jusqu’aux bords avec une spatule. Verser ensuite le reste du glaçage blanc sur le dessus du cake et le laisser couler sur les bords. Parsemer immédiatement de graines de pavots et de zestes de citron pour décorer le glaçage. Laisser ensuite le glaçage figer 12h sur la grille à pâtisserie sans le toucher.")

Dose.create!(step: cake_citron_graines_pavot_variant_2_step_1, ingredient: beurre, quantity: 100, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_variant_2_step_1, ingredient: sucre, quantity: 150, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_variant_2_step_1, ingredient: oeuf, quantity: 2)
Dose.create!(step: cake_citron_graines_pavot_variant_2_step_1, ingredient: citron, unit: 'zeste')
Dose.create!(step: cake_citron_graines_pavot_variant_2_step_1, ingredient: jus_citron, quantity: 10, unit: 'cl')
Dose.create!(step: cake_citron_graines_pavot_variant_2_step_1, ingredient: farine_riz, quantity: 200, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_variant_2_step_1, ingredient: levure_chimique, quantity: 1, unit: 'sachet')
Dose.create!(step: cake_citron_graines_pavot_variant_2_step_1, ingredient: sel, quantity: 2, unit: 'pincée')
Dose.create!(step: cake_citron_graines_pavot_variant_2_step_1, ingredient: lait, quantity: 5, unit: 'cl')
Dose.create!(step: cake_citron_graines_pavot_variant_2_step_1, ingredient: graines_pavot, quantity: 2, unit: 'cuillères à soupe')

Dose.create!(step: cake_citron_graines_pavot_variant_2_step_2, ingredient: sucre_glace, quantity: 80, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_variant_2_step_2, ingredient: jus_citron, quantity: 5, unit: 'cl')

Dose.create!(step: cake_citron_graines_pavot_variant_2_step_3, ingredient: sucre_glace, quantity: 150, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_variant_2_step_3, ingredient: jus_citron, quantity: 5, unit: 'cl')


StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_1, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_1, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_1, utensil: moule)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_1, utensil: four)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_1, utensil: couteau)

StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_2, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_2, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_2, utensil: couteau)

StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_3, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_3, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_3, utensil: spatule)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_3, utensil: grille_a_patisserie)


RecipeTag.create!(recipe: cake_citron_graines_pavot_variant_2, tag: allegee)
RecipeTag.create!(recipe: cake_citron_graines_pavot_variant_2, tag: sans_gluten)

################################################################################
# VARIANT 3
################################################################################

puts 'Creating recipe variant 3'
cake_citron_graines_pavot_variant_3    = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/mini_cakes_au_citron.jpg')), title: "Cake au citron et graines de pavot", subtitle: "Version mini et sans graines de pavot", description: "Et voici un version mini, à partager et à emporter ! Et comme je ne suis pas très graines de pavot, j'ai fait sans.", prep_time: "10 min", cook_time: "55 min", rest_time: "12 h", kind: "variant", published: true, user: thierry, original_recipe: cake_citron_graines_pavot)

cake_citron_graines_pavot_variant_3_step_1 = Step.create!(recipe: cake_citron_graines_pavot_variant_3, position: 1, content: "Dans un bol, battre vivement le beurre et le sucre jusqu’à obtenir un mélange crémeux. Ajouter ensuite les ingrédients restants dans l’ordre et bien mélanger entre chaque ajout. Verser la préparation dans un moule à cake beurré. Enfourner dans un four préchauffé à 180°C et cuire 40 à 45mn (jusqu’à ce que la lame d’un couteau ressorte propre).  - Laisser le cake tiédir 10mn sans le démouler.")
cake_citron_graines_pavot_variant_3_step_2 = Step.create!(recipe: cake_citron_graines_pavot_variant_3, position: 2, content: "Pendant ce temps, mélanger les ingredients du 1er glaçage : 80g de sucre glace et le jus d'un demi citron, on doit obtenir un mélange plutôt liquide. Piquer le cake avec le couteau et verser doucement ce glaçage sur le dessus du cake toujours dans son moule pour l'imbiber. Laisser le cake absorber le glaçage et refroidir pendant environ 20 min.")
cake_citron_graines_pavot_variant_3_step_3 = Step.create!(recipe: cake_citron_graines_pavot_variant_3, position: 3, content: "Démouler ensuite le cake et le poser sur une grille à pâtisserie. Mélanger les ingrédients du 2e glaçage : 150g de sucre glace et le jus d’un demi citron, on doit il obtenir un mélange pas trop liquide et bien blanc (ajouter un peu de sucre glace si il est trop liquide). Verser doucement la moitié du glaçage blanc sur le dessus du cake, étaler jusqu’aux bords avec une spatule. Verser ensuite le reste du glaçage blanc sur le dessus du cake et le laisser couler sur les bords. Parsemer de zestes de citron pour décorer le glaçage. Laisser ensuite le glaçage figer 12h sur la grille à pâtisserie sans le toucher.")

Dose.create!(step: cake_citron_graines_pavot_variant_3_step_1, ingredient: beurre, quantity: 100, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_variant_3_step_1, ingredient: sucre, quantity: 150, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_variant_3_step_1, ingredient: oeuf, quantity: 2)
Dose.create!(step: cake_citron_graines_pavot_variant_3_step_1, ingredient: citron, unit: 'zeste')
Dose.create!(step: cake_citron_graines_pavot_variant_3_step_1, ingredient: jus_citron, quantity: 10, unit: 'cl')
Dose.create!(step: cake_citron_graines_pavot_variant_3_step_1, ingredient: farine_riz, quantity: 200, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_variant_3_step_1, ingredient: levure_chimique, quantity: 1, unit: 'sachet')
Dose.create!(step: cake_citron_graines_pavot_variant_3_step_1, ingredient: sel, quantity: 2, unit: 'pincée')
Dose.create!(step: cake_citron_graines_pavot_variant_3_step_1, ingredient: lait, quantity: 5, unit: 'cl')

Dose.create!(step: cake_citron_graines_pavot_variant_3_step_2, ingredient: sucre_glace, quantity: 80, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_variant_3_step_2, ingredient: jus_citron, quantity: 5, unit: 'cl')

Dose.create!(step: cake_citron_graines_pavot_variant_3_step_3, ingredient: sucre_glace, quantity: 150, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_variant_3_step_3, ingredient: jus_citron, quantity: 5, unit: 'cl')


StepUtensil.create!(step: cake_citron_graines_pavot_variant_3_step_1, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_3_step_1, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_3_step_1, utensil: moule)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_3_step_1, utensil: four)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_3_step_1, utensil: couteau)

StepUtensil.create!(step: cake_citron_graines_pavot_variant_3_step_2, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_3_step_2, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_3_step_2, utensil: couteau)

StepUtensil.create!(step: cake_citron_graines_pavot_variant_3_step_3, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_3_step_3, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_3_step_3, utensil: spatule)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_3_step_3, utensil: grille_a_patisserie)


RecipeTag.create!(recipe: cake_citron_graines_pavot_variant_3, tag: allegee)
RecipeTag.create!(recipe: cake_citron_graines_pavot_variant_3, tag: version_mini)


puts 'Finished!'
