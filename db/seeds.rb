puts 'Cleaning DB...'

Dose.destroy_all
StepUtensil.destroy_all
RecipeTag.destroy_all
Ingredient.destroy_all
Utensil.destroy_all
Step.destroy_all
ChangesProposal.destroy_all
Recipe.destroy_all
User.destroy_all
Tag.destroy_all


puts 'Creating new ingredients'
citron                  = Ingredient.create!(name: "citron")
jus_citron              = Ingredient.create!(name: "jus de citron")
oeuf                    = Ingredient.create!(name: "oeuf")
sucre_vanillé           = Ingredient.create!(name: "sucre vanillé")
beurre                  = Ingredient.create!(name: "beurre")
farine                  = Ingredient.create!(name: "farine")
myrtilles               = Ingredient.create!(name: "beurre")
sucre                   = Ingredient.create!(name: "sucre")
sel                     = Ingredient.create!(name: "sel")
levure_chimique         = Ingredient.create!(name: "levure chimique")
lait                    = Ingredient.create!(name: "lait")
graines_pavot           = Ingredient.create!(name: "graines de pavot")
sucre_glace             = Ingredient.create!(name: "sucre glace")
lait_coco               = Ingredient.create!(name: "lait de coco")
beurre_vegetal          = Ingredient.create!(name: "beurre végétal")
farine_riz              = Ingredient.create!(name: "farine de riz")
tomate                  = Ingredient.create!(name: "tomate")
poivre                  = Ingredient.create!(name: "poivre")
oignon                  = Ingredient.create!(name: "oignon")
gousse_d_ail            = Ingredient.create!(name: "gousse d'ail")
farine_d_avoine         = Ingredient.create!(name: "farine d'avoine")
graines_de_lin          = Ingredient.create!(name: "graines de lin")
baies_surgelees_mixees  = Ingredient.create!(name: "baies surgelées mixées")
yaourt_a_la_grecque     = Ingredient.create!(name: "yaourt à la grecque")
lait_ecreme             = Ingredient.create!(name: "lait écrémé")
crevettes               = Ingredient.create!(name: "crevettes")
flocons_d_avoine        = Ingredient.create!(name: "flocons d'avoine")
amandes_hachees         = Ingredient.create!(name: "amandes hachées")
blanc_d_oeufs           = Ingredient.create!(name: "blanc d'oeuf")
gingembre               = Ingredient.create!(name: "gingembre")
huile_d_arachide        = Ingredient.create!(name: "huile d'arachide")
curry                   = Ingredient.create!(name: "curry")
pomme                   = Ingredient.create!(name: "pomme")
pate_de_noix_de_cajou   = Ingredient.create!(name: "pâte de noix de cajou")
miel                    = Ingredient.create!(name: "miel")
gousse_de_vanille       = Ingredient.create!(name: "gousse de vanille")
flocons_de_noix_de_coco = Ingredient.create!(name: "flocons de noix de coco")
gambas                  = Ingredient.create!(name: "gambas")
lait_amandes             = Ingredient.create!(name: "lait d'amandes")

puts 'Creating new utensils'
four                  = Utensil.create!(name: "four")
mixeur                = Utensil.create!(name: "mixeur")
bol                   = Utensil.create!(name: "bol")
verre_doseur          = Utensil.create!(name: "verre doseur")
presse_agrumes        = Utensil.create!(name: "presse agrumes")
moule                 = Utensil.create!(name: "moule")
fouet                 = Utensil.create!(name: "fouet")
casserole             = Utensil.create!(name: "casserole")
papier_sulfurisé      = Utensil.create!(name: "papier sulfurisé")
zesteur               = Utensil.create!(name: "zesteur")
couteau               = Utensil.create!(name: "couteau")
spatule               = Utensil.create!(name: "spatule")
grille_a_patisserie   = Utensil.create!(name: "grille à patisserie")
poele                 = Utensil.create!(name: "poêle")
fouet_electrique      = Utensil.create!(name: "fouet électrique")
recipient             = Utensil.create!(name: "récipient")
wok                   = Utensil.create!(name: "wok")
presse_citron         = Utensil.create!(name: "presse citron")
papier_sulfurise      = Utensil.create!(name: "papier sulfurisé")
plaque_patisserie     = Utensil.create!(name: "plaque pâtisserie")
recipient_refermable  = Utensil.create!(name: "récipient refermable")

puts 'Creating new tags'
allegee           = Tag.create!(name: "allégée")
sans_gluten       = Tag.create!(name: "sans gluten")
sans_lactose      = Tag.create!(name: "sans lactose")
vegan             = Tag.create!(name: "vegan")
plus_rapide       = Tag.create!(name: "plus rapide")
version_mini      = Tag.create!(name: "version mini")
avec_lait_amandes = Tag.create!(name: "avec lait d'amandes")
avec_gambas       = Tag.create!(name: "avec gambas")
sans_gingembre    = Tag.create!(name: "sans gingembre")

puts 'Creating new users'
thierry  = User.create!(first_name: "thierry", last_name: "de azevedo", email: "tda@cuisine.com", password: "azerty", avatar: File.open(Rails.root.join('db/fixtures/avatars/thierry.jpg')))
diane    = User.create!(first_name: "diane", last_name: "du payrat", email: "ddp@cuisine.com", password: "azerty", avatar: File.open(Rails.root.join('db/fixtures/avatars/diane.jpg')))
melanie  = User.create!(first_name: "melanie", last_name: "rat", email: "mr@cuisine.com", password: "azerty", avatar: File.open(Rails.root.join('db/fixtures/avatars/melanie.jpg')))
matthias = User.create!(first_name: "matthias", last_name: "geoffroy", email: "mg@cuisine.com", password: "azerty", avatar: File.open(Rails.root.join('db/fixtures/avatars/matthias.jpg')))
mamie    = User.create!(first_name: "mamie", last_name: "brigitte", email: "mb@cuisine.com", password: "azerty", avatar: File.open(Rails.root.join('db/fixtures/avatars/mamie.jpg')))

puts 'Creating new recipes'
cake_citron_graines_pavot    = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/cake_citron_pavot.jpg')), title: "Cake au citron et graines de pavot", subtitle: "originale",
                             description: "Aujourd'hui je vous propose la recette d'un cake extraordinaire! Un délicieux cake au citron bien moelleux, humide, bien parfumé et pas trop sucré. Bref c'est une véritable tuerie, après le cake anglais aux fruits confits, c'est mon 2e cake préféré! ",
                             prep_time: "10 min", cook_time: "55 min", rest_time: "12 h", kind: "original", published: true, user: diane, published_on: "2019-03-23", servings: 4, upvote: 5)
tarte_au_fraise              = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/tarte_aux_fraises.jpg')), title: "Tarte aux fraises", subtitle: "originale",
                             description: "Une pâte brisée maison, une bonne crème pâtissière à la vanille et des belles fraises, c’est tout ce qu’il vous faut pour réaliser cette recette de tarte aux fraises facile à la maison. Réutilisez cette base de tarte pour décliner en tarte aux framboises, aux mûres, aux myrtilles… ou tout autre fruit qu’il vaut mieux manger cru que cuit au four.",
                             prep_time: "10 min", cook_time: "55 min", rest_time: "12 h", user: thierry, kind: "original", published: true, published_on: "2019-03-15", servings: 6, upvote: 7)
tajine_poulet_citron_confits = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/tajine_poulet_citrons_confits.jpg')), title: "Tajine de poulet aux citrons confits ", subtitle: "originale",
                             description: "Encore une recette réalisée lors de mon périple à Marrakech. C’était GENIAL. J’ai adoré cette recette de tajine, facile à réaliser, pleine de saveurs et de parfums. A faire et à refaire.",
                             prep_time: "10 min", cook_time: "55 min", rest_time: "12 h", user: melanie, kind: "original", published: true, published_on: "2019-03-12", servings: 4, upvote: 10)
curry_de_crevettes_doux      = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/curry_de_crevettes_doux.jpg')), title: "Curry de crevettes doux", subtitle: "originale",
                             description: "J’ai découvert cette recette lors de mon dernier voyage en asie. Ce curry est extrêmement riche en protéines. Il est crémeux, savoureux, légèrement épicé et ne nécessite que 20 minutes de préparation. Rapide à préparer, fait maison et beaucoup plus sain que les plats à emporter. ",
                             prep_time: "10 min", cook_time: "55 min", rest_time: "12 h", user: diane, kind: "original", published: true, published_on: "2019-03-29", servings: 4, upvote: 7)
muesli_suisse                = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/muesli_suisse.jpg')), title: "Muesli Suisse", subtitle: "originale",
                             description: "Très prisé des sportifs, ce muesli riche en fibres. Etant donné qu'elles macèrent dans votre estomac, les graines de lin doivent toujours être consommées avec suffisamment de liquide. La consommation de graines de lin est particulièrement recommandée le matin, car elles stimulent le métabolisme et la digestion.",
                             prep_time: "10 min", cook_time: "5 min", rest_time: "12 h", user: matthias, kind: "original", published: true, published_on: "2019-03-29", servings: 4, upvote:9)
macarons_a_la_noix_de_coco   = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/macarons_a_la_noix_de_coco.jpg')), title: "Macarons à la noix de coco", subtitle: "originale",
                             description: "Les macarons de noix de coco sont une vrai bombe de protéines. Ils sont parfaitement adaptées en tant que snakc après vos sessions de sport intensives, mais aussi à tout moment de la journée. De plus, la graisse contenue dans la noix de coco est censée avoir un effet positif sur le cerveau.",
                             prep_time: "30 min", cook_time: "25 min", rest_time: "2 h", user: matthias, kind: "original", published: true, published_on: "2019-03-18", servings: 24, upvote: 3)
muesli_au_melange_de_baies   = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/muesli_au_melange_de_baies.jpg')), title: "Muesli au mélange de baies", subtitle: "originale",
                             description: "Ce muesli au goût très frais si les baies sont congelés et décongèlent lentement, doit être préparer idéalement la veille au soir en le laissant tremper toute la nuit. dans le cas où le muesli serait trop sec, ajouter du lait et mélanger.",
                             prep_time: "10 min", cook_time: "5 min", rest_time: "8 h", user: thierry, kind: "original", published: true, published_on: "2019-03-24", servings: 1, upvote: 8)
langue_de_boeuf              = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/langue_de_boeuf.jpg')), title: "Langue de boeuf à la sauce madère", subtitle: "originale",
                             description: "La langue de bœuf... beaucoup d'entre vous diront « Beurk j'aime pas » ! Mais bien cuisinée, ce plat principal est un vrai régal. Facile à réaliser, elle demande un peu de temps de préparation et de cuisson, mais on vous l'assure, ça en vaut le coup ! Une bonne sauce bien onctueuse et gourmande à souhait à base du célèbre vin rouge liquoreux, une langue bien cuite, quelques légumes, la langue de bœuf sauce à la Madère est vraiment à essayer!",
                             prep_time: "10 min", cook_time: "2 h", rest_time: "6 h", user: melanie, kind: "original", published: false, published_on: "2019-03-14", servings: 4, upvote: 7)


puts 'Creating steps'
cake_citron_graines_pavot_step_1    = Step.create!(recipe: cake_citron_graines_pavot, position: 1, content: "Dans un bol, battre vivement le beurre et le sucre jusqu’à obtenir un mélange crémeux. Ajouter ensuite les ingrédients restants dans l’ordre et bien mélanger entre chaque ajout. Verser la préparation dans un moule à cake beurré. Enfourner dans un four préchauffé à 180°C et cuire 40 à 45mn (jusqu’à ce que la lame d’un couteau ressorte propre).  - Laisser le cake tiédir 10mn sans le démouler.")
cake_citron_graines_pavot_step_2    = Step.create!(recipe: cake_citron_graines_pavot, position: 2, content: "Pendant ce temps, mélanger les ingredients du 1er glaçage : 80g de sucre glace et le jus d'un demi citron, on doit obtenir un mélange plutôt liquide. Piquer le cake avec le couteau et verser doucement ce glaçage sur le dessus du cake toujours dans son moule pour l'imbiber. Laisser le cake absorber le glaçage et refroidir pendant environ 20 min.")
cake_citron_graines_pavot_step_3    = Step.create!(recipe: cake_citron_graines_pavot, position: 3, content: "Démouler ensuite le cake et le poser sur une grille à pâtisserie. Mélanger les ingrédients du 2e glaçage : 150g de sucre glace et le jus d’un demi citron, on doit il obtenir un mélange pas trop liquide et bien blanc (ajouter un peu de sucre glace si il est trop liquide). Verser doucement la moitié du glaçage blanc sur le dessus du cake, étaler jusqu’aux bords avec une spatule. Verser ensuite le reste du glaçage blanc sur le dessus du cake et le laisser couler sur les bords. Parsemer immédiatement de graines de pavots et de zestes de citron pour décorer le glaçage. Laisser ensuite le glaçage figer 12h sur la grille à pâtisserie sans le toucher.")
curry_de_crevettes_doux_step_1      = Step.create!(recipe: curry_de_crevettes_doux, position: 1, content: "Couper la tomate en petits morceaux, peler et écraser les gousses d'ail, émincer les oignons.")
curry_de_crevettes_doux_step_2      = Step.create!(recipe: curry_de_crevettes_doux, position: 2, content: "Dans une sauteuse ou un wok, chauffer l'huile. Mélanger ail, oignons, gingembre et curry.")
curry_de_crevettes_doux_step_3      = Step.create!(recipe: curry_de_crevettes_doux, position: 3, content: "Quand les oignons sont translucides, mettre la tomate, le lait de coco et le yaourt à la grecque. Saler, poivrer, mélanger, mettre un couvercle et laisser mijoter pendant 15 minutes.")
curry_de_crevettes_doux_step_4      = Step.create!(recipe: curry_de_crevettes_doux, position: 4, content: "Rajouter les crevettes et laisser cuire pendant 2 à 3 minutes. Servir avec du riz.")
muesli_suisse_step_1                = Step.create!(recipe: muesli_suisse, position: 1, content: "Griller les amandes dans une poêle sans matière grasse pendant environ 4 minutes à feu moyen.")
muesli_suisse_step_2                = Step.create!(recipe: muesli_suisse, position: 2, content: "Vider et couper les pommes.")
muesli_suisse_step_3                = Step.create!(recipe: muesli_suisse, position: 3, content: "Pressez le citron.")
muesli_suisse_step_4                = Step.create!(recipe: muesli_suisse, position: 4, content: "Mélanger les flocons d'avoine, les graines de lin, les amandes grillées, les morceaux de pommes avec le yaourt à la grecque allégé, le lait et le jus de citron, puis saupoudrer la cannelle.")
macarons_a_la_noix_de_coco_step_1   = Step.create!(recipe: macarons_a_la_noix_de_coco, position: 1, content: "Fouetter et monter les blancs d'oeufs avec une pincée de sel dans un grand saladier au fouet électrique ou au mixeur plongeant.")
macarons_a_la_noix_de_coco_step_2   = Step.create!(recipe: macarons_a_la_noix_de_coco, position: 2, content: "Ajouter la noix de coco, la crème d'amandes et le miel.")
macarons_a_la_noix_de_coco_step_3   = Step.create!(recipe: macarons_a_la_noix_de_coco, position: 3, content: "Façonner avec vos mains ou une cuillère à soupe, 24 boules d'environ 3 cm, les disposer sur un papier sulfurisé sur une plaque à pâtisserie et les écraser légèrement.")
macarons_a_la_noix_de_coco_step_4   = Step.create!(recipe: macarons_a_la_noix_de_coco, position: 4, content: "Préchauffer le four à 150°C (sans chaleur tournante). Cuire à mi-hauteur pendant environ 25 minutes, jusqu'à ce qu'ils commencent à dorer.")
muesli_au_melange_de_baies_step_1   = Step.create!(recipe: muesli_au_melange_de_baies, position: 1, content: "Griller les amandes dans une poêle sans matière grasse environ 4 minutes.")
muesli_au_melange_de_baies_step_2   = Step.create!(recipe: muesli_au_melange_de_baies, position: 2, content: "Emincer finement la gousse de vanille.")
muesli_au_melange_de_baies_step_3   = Step.create!(recipe: muesli_au_melange_de_baies, position: 3, content: "Mélanger la farine d'avoine, les graines de lin, les amandes grillées, les baies et une gousse de vanille avec le yaourt à la grecque et le lait.")



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
Dose.create!(step: curry_de_crevettes_doux_step_1, ingredient: tomate, quantity: 1)
Dose.create!(step: curry_de_crevettes_doux_step_1, ingredient: oignon, quantity: 1)
Dose.create!(step: curry_de_crevettes_doux_step_1, ingredient: gousse_d_ail, quantity: 2)
Dose.create!(step: muesli_suisse_step_1, ingredient: amandes_hachees, quantity: 30, unit: 'g')
Dose.create!(step: macarons_a_la_noix_de_coco_step_1, ingredient: blanc_d_oeufs, quantity: 4)
Dose.create!(step: macarons_a_la_noix_de_coco_step_1, ingredient: sel, quantity: 1, unit: 'pincée')
Dose.create!(step: muesli_au_melange_de_baies_step_1, ingredient: amandes_hachees, quantity: 30, unit: 'g')

Dose.create!(step: cake_citron_graines_pavot_step_2, ingredient: sucre_glace, quantity: 80, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_step_2, ingredient: jus_citron, quantity: 5, unit: 'cl')
Dose.create!(step: curry_de_crevettes_doux_step_2, ingredient: gingembre, quantity: 30, unit: 'g')
Dose.create!(step: curry_de_crevettes_doux_step_2, ingredient: huile_d_arachide, quantity: 3, unit: 'cuillère à soupe')
Dose.create!(step: curry_de_crevettes_doux_step_2, ingredient: curry, quantity: 2, unit: 'cuillère à soupe')
Dose.create!(step: muesli_suisse_step_2, ingredient: pomme, quantity: 2)
Dose.create!(step: macarons_a_la_noix_de_coco_step_2, ingredient: flocons_de_noix_de_coco, quantity: 200, unit: 'g')
Dose.create!(step: macarons_a_la_noix_de_coco_step_2, ingredient: pate_de_noix_de_cajou, quantity: 1, unit: 'cuillère à café')
Dose.create!(step: macarons_a_la_noix_de_coco_step_2, ingredient: miel, quantity: 1, unit: 'cuillère à café')
Dose.create!(step: muesli_au_melange_de_baies_step_2, ingredient: gousse_de_vanille, quantity: 1)

Dose.create!(step: cake_citron_graines_pavot_step_3, ingredient: sucre_glace, quantity: 150, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_step_3, ingredient: jus_citron, quantity: 5, unit: 'cl')
Dose.create!(step: curry_de_crevettes_doux_step_3, ingredient: yaourt_a_la_grecque, quantity: 1)
Dose.create!(step: curry_de_crevettes_doux_step_3, ingredient: sel, quantity: 1, unit: 'une pincée')
Dose.create!(step: curry_de_crevettes_doux_step_3, ingredient: poivre, quantity: 1, unit: 'une pincée')
Dose.create!(step: muesli_suisse_step_3, ingredient: citron, quantity: 1)
Dose.create!(step: muesli_au_melange_de_baies_step_3, ingredient: farine_d_avoine, quantity: 50, unit: 'g')
Dose.create!(step: muesli_au_melange_de_baies_step_3, ingredient: graines_de_lin, quantity: 30, unit: 'g')
Dose.create!(step: muesli_au_melange_de_baies_step_3, ingredient: baies_surgelees_mixees, quantity: 150, unit:'g')
Dose.create!(step: muesli_au_melange_de_baies_step_3, ingredient: yaourt_a_la_grecque, quantity: 250, unit:'g')
Dose.create!(step: muesli_au_melange_de_baies_step_3, ingredient: lait_ecreme, quantity: 150, unit: 'ml')

Dose.create!(step: curry_de_crevettes_doux_step_4, ingredient: crevettes, quantity: 600, unit: 'g')
Dose.create!(step: muesli_suisse_step_4, ingredient: flocons_d_avoine, quantity: 50, unit: 'g')
Dose.create!(step: muesli_suisse_step_4, ingredient: graines_de_lin, quantity: 30, unit: 'g')
Dose.create!(step: muesli_suisse_step_4, ingredient: yaourt_a_la_grecque, quantity: 250, unit: 'g')
Dose.create!(step: muesli_suisse_step_4, ingredient: lait_ecreme, quantity: 150, unit: 'ml')


puts 'Creating step utensils'
StepUtensil.create!(step: cake_citron_graines_pavot_step_1, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_step_1, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_step_1, utensil: moule)
StepUtensil.create!(step: cake_citron_graines_pavot_step_1, utensil: four)
StepUtensil.create!(step: cake_citron_graines_pavot_step_1, utensil: couteau)
StepUtensil.create!(step: curry_de_crevettes_doux_step_1, utensil: couteau)
StepUtensil.create!(step: curry_de_crevettes_doux_step_1, utensil: bol)
StepUtensil.create!(step: muesli_suisse_step_1, utensil: poele)
StepUtensil.create!(step: macarons_a_la_noix_de_coco_step_1, utensil: fouet_electrique)
StepUtensil.create!(step: macarons_a_la_noix_de_coco_step_1, utensil: recipient)
StepUtensil.create!(step: muesli_au_melange_de_baies_step_1, utensil: poele)

StepUtensil.create!(step: cake_citron_graines_pavot_step_2, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_step_2, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_step_2, utensil: couteau)
StepUtensil.create!(step: curry_de_crevettes_doux_step_2, utensil: wok)
StepUtensil.create!(step: muesli_suisse_step_2, utensil: couteau)


StepUtensil.create!(step: cake_citron_graines_pavot_step_3, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_step_3, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_step_3, utensil: spatule)
StepUtensil.create!(step: cake_citron_graines_pavot_step_3, utensil: grille_a_patisserie)
StepUtensil.create!(step: curry_de_crevettes_doux_step_3, utensil: wok)
StepUtensil.create!(step: muesli_suisse_step_3, utensil: presse_citron)
StepUtensil.create!(step: macarons_a_la_noix_de_coco_step_3, utensil: papier_sulfurise)
StepUtensil.create!(step: macarons_a_la_noix_de_coco_step_3, utensil: plaque_patisserie)
StepUtensil.create!(step: muesli_au_melange_de_baies_step_3, utensil: recipient)

StepUtensil.create!(step: muesli_suisse_step_4, utensil: recipient_refermable)
StepUtensil.create!(step: macarons_a_la_noix_de_coco_step_4, utensil: four)


puts 'Creating recipe tags'
RecipeTag.create!(recipe: cake_citron_graines_pavot, tag: allegee)

################################################################################
# VARIANT 1
################################################################################

puts 'Creating recipe variant 1'
cake_citron_graines_pavot_variant_1    = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/cake_citron_pavot_sans_lactose.jpg')), title: "Cake au citron et graines de pavot", subtitle: "Sans lactose", description: "J'aime beaucoup la recette de cake au citron et graines de pavot de Diane et j'ai voulu la tenter sans lactose. Un vrai délice aussi pour les allergiques !", prep_time: "10 min", cook_time: "55 min", rest_time: "12 h", kind: "variant", published: true, published_on: "2019-04-02", user: matthias, original_recipe: cake_citron_graines_pavot, servings: 4, upvote: 4)
curry_de_crevettes_doux_variant_1      = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/curry_de_crevettes_doux.jpg')), title: "Curry de crevettes doux", subtitle: "Sans gingembre", description: "J'aime beaucoup cette recette de curry de crevettes doux de Diane et j'ai voulu la tenter sans gingembre. Un vrai délice aussi pour les allergiques !", prep_time: "10 min", cook_time: "55 min", rest_time: "12 h", kind: "variant", published: true, published_on: "2019-04-02", user: matthias, original_recipe: curry_de_crevettes_doux, servings: 4, upvote: 5)
muesli_suisse_variant_1                = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/muesli_suisse.jpg')), title: "Muesli Suisse", subtitle: "au lait d'amandes", description: "Intolérant au lait de vache, j'ai adapté cette recette de Matthias avec du lait d'amandes. Délicieux et adapté à mon régime sportif!", prep_time: "10 min", cook_time: "55 min", rest_time: "12 h", kind: "variant", published: true, user: thierry, published_on: "2019-04-02", original_recipe: muesli_suisse, servings: 4, upvote: 6)


cake_citron_graines_pavot_variant_1_step_1 = Step.create!(recipe: cake_citron_graines_pavot_variant_1, position: 1, content: "Dans un bol, battre vivement le beurre végétal (d'amande, de noix de cajou, ou de noisette) et le sucre jusqu’à obtenir un mélange crémeux. Ajouter ensuite les ingrédients restants dans l’ordre et bien mélanger entre chaque ajout. Verser la préparation dans un moule à cake beurré. Enfourner dans un four préchauffé à 180°C et cuire 40 à 45mn (jusqu’à ce que la lame d’un couteau ressorte propre).  - Laisser le cake tiédir 10mn sans le démouler.")
cake_citron_graines_pavot_variant_1_step_2 = Step.create!(recipe: cake_citron_graines_pavot_variant_1, position: 2, content: "Pendant ce temps, mélanger les ingredients du 1er glaçage : 80g de sucre glace et le jus d'un demi citron, on doit obtenir un mélange plutôt liquide. Piquer le cake avec le couteau et verser doucement ce glaçage sur le dessus du cake toujours dans son moule pour l'imbiber. Laisser le cake absorber le glaçage et refroidir pendant environ 20 min.")
cake_citron_graines_pavot_variant_1_step_3 = Step.create!(recipe: cake_citron_graines_pavot_variant_1, position: 3, content: "Démouler ensuite le cake et le poser sur une grille à pâtisserie. Mélanger les ingrédients du 2e glaçage : 150g de sucre glace et le jus d’un demi citron, on doit il obtenir un mélange pas trop liquide et bien blanc (ajouter un peu de sucre glace si il est trop liquide). Verser doucement la moitié du glaçage blanc sur le dessus du cake, étaler jusqu’aux bords avec une spatule. Verser ensuite le reste du glaçage blanc sur le dessus du cake et le laisser couler sur les bords. Parsemer immédiatement de graines de pavots et de zestes de citron pour décorer le glaçage. Laisser ensuite le glaçage figer 12h sur la grille à pâtisserie sans le toucher.")
curry_de_crevettes_doux_variant_1_step_1   = Step.create!(recipe: curry_de_crevettes_doux_variant_1, position: 1, content: "Couper la tomate en petits morceaux, peler et écraser les gousses d'ail, émincer les oignons.")
curry_de_crevettes_doux_variant_1_step_2   = Step.create!(recipe: curry_de_crevettes_doux_variant_1, position: 2, content: "Dans une sauteuse ou un wok, chauffer l'huile. Mélanger ail, oignons et curry.")
curry_de_crevettes_doux_variant_1_step_3   = Step.create!(recipe: curry_de_crevettes_doux_variant_1, position: 3, content: "Quand les oignons sont translucides, mettre la tomate, le lait de coco et le yaourt à la grecque. Saler, poivrer, mélanger, mettre un couvercle et laisser mijoter pendant 15 minutes.")
curry_de_crevettes_doux_variant_1_step_4   = Step.create!(recipe: curry_de_crevettes_doux_variant_1, position: 4, content: "Rajouter les crevettes et laisser cuire pendant 2 à 3 minutes. Servir avec du riz.")
muesli_suisse_variant_1_step_1             = Step.create!(recipe: muesli_suisse_variant_1, position: 1, content: "Griller les amandes dans une poêle sans matière grasse pendant environ 4 minutes à feu moyen.")
muesli_suisse_variant_1_step_2             = Step.create!(recipe: muesli_suisse_variant_1, position: 2, content: "Vider et couper les pommes.")
muesli_suisse_variant_1_step_3             = Step.create!(recipe: muesli_suisse_variant_1, position: 3, content: "Pressez le citron.")
muesli_suisse_variant_1_step_4             = Step.create!(recipe: muesli_suisse_variant_1, position: 4, content: "Mélanger les flocons d'avoine, les graines de lin, les amandes grillées, les morceaux de pommes avec le yaourt à la grecque allégé, le lait d'amandes et le jus de citron, puis saupoudrer la cannelle.")

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
Dose.create!(step: curry_de_crevettes_doux_variant_1_step_1, ingredient: tomate, quantity: 1)
Dose.create!(step: curry_de_crevettes_doux_variant_1_step_1, ingredient: oignon, quantity: 1)
Dose.create!(step: curry_de_crevettes_doux_variant_1_step_1, ingredient: gousse_d_ail, quantity: 2)
Dose.create!(step: muesli_suisse_variant_1_step_1, ingredient: amandes_hachees, quantity: 30, unit: 'g')

Dose.create!(step: cake_citron_graines_pavot_variant_1_step_2, ingredient: sucre_glace, quantity: 80, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_variant_1_step_2, ingredient: jus_citron, quantity: 5, unit: 'cl')
Dose.create!(step: curry_de_crevettes_doux_variant_1_step_2, ingredient: huile_d_arachide, quantity: 3, unit: 'cuillère à soupe')
Dose.create!(step: curry_de_crevettes_doux_variant_1_step_2, ingredient: curry, quantity: 2, unit: 'cuillère à soupe')
Dose.create!(step: muesli_suisse_variant_1_step_2, ingredient: pomme, quantity: 2)

Dose.create!(step: cake_citron_graines_pavot_variant_1_step_3, ingredient: sucre_glace, quantity: 150, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_variant_1_step_3, ingredient: jus_citron, quantity: 5, unit: 'cl')
Dose.create!(step: curry_de_crevettes_doux_variant_1_step_3, ingredient: yaourt_a_la_grecque, quantity: 1)
Dose.create!(step: curry_de_crevettes_doux_variant_1_step_3, ingredient: sel, quantity: 1, unit: 'une pincée')
Dose.create!(step: curry_de_crevettes_doux_variant_1_step_3, ingredient: poivre, quantity: 1, unit: 'une pincée')
Dose.create!(step: muesli_suisse_variant_1_step_3, ingredient: citron, quantity: 1)

Dose.create!(step: curry_de_crevettes_doux_variant_1_step_4, ingredient: crevettes, quantity: 600, unit: 'g')
Dose.create!(step: muesli_suisse_variant_1_step_4, ingredient: flocons_d_avoine, quantity: 50, unit: 'g')
Dose.create!(step: muesli_suisse_variant_1_step_4, ingredient: graines_de_lin, quantity: 30, unit: 'g')
Dose.create!(step: muesli_suisse_variant_1_step_4, ingredient: yaourt_a_la_grecque, quantity: 250, unit: 'g')
Dose.create!(step: muesli_suisse_variant_1_step_4, ingredient: lait_amandes, quantity: 150, unit: 'ml')

StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_1, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_1, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_1, utensil: moule)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_1, utensil: four)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_1, utensil: couteau)
StepUtensil.create!(step: curry_de_crevettes_doux_variant_1_step_1, utensil: couteau)
StepUtensil.create!(step: curry_de_crevettes_doux_variant_1_step_1, utensil: bol)
StepUtensil.create!(step: muesli_suisse_variant_1_step_1, utensil: poele)

StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_2, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_2, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_2, utensil: couteau)
StepUtensil.create!(step: curry_de_crevettes_doux_variant_1_step_2, utensil: wok)
StepUtensil.create!(step: muesli_suisse_variant_1_step_2, utensil: couteau)

StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_3, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_3, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_3, utensil: spatule)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_1_step_3, utensil: grille_a_patisserie)
StepUtensil.create!(step: curry_de_crevettes_doux_variant_1_step_3, utensil: wok)
StepUtensil.create!(step: muesli_suisse_variant_1_step_3, utensil: presse_citron)

StepUtensil.create!(step: muesli_suisse_variant_1_step_4, utensil: recipient_refermable)

RecipeTag.create!(recipe: cake_citron_graines_pavot_variant_1, tag: allegee)
RecipeTag.create!(recipe: cake_citron_graines_pavot_variant_1, tag: sans_lactose)
RecipeTag.create!(recipe: cake_citron_graines_pavot_variant_1, tag: vegan)
RecipeTag.create!(recipe: curry_de_crevettes_doux_variant_1, tag: sans_gingembre)
RecipeTag.create!(recipe: muesli_suisse_variant_1, tag: avec_lait_amandes)


################################################################################
# VARIANT 2
################################################################################

puts 'Creating recipe variant 2'
cake_citron_graines_pavot_variant_2    = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/cake_citron_pavot_sans_gluten.jpg')), title: "Cake au citron et graines de pavot", subtitle: "Sans gluten", description: "Super recette, merci Diane, et moi je préfère cette version sans gluten. Goutez-y, vous verrez c'est super bon !", prep_time: "10 min", cook_time: "55 min", rest_time: "12 h", kind: "variant", published: true, published_on: "2019-04-02", user: melanie, original_recipe: cake_citron_graines_pavot, servings: 4, upvote: 3)
curry_de_crevettes_doux_variant_2      = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/curry_de_crevettes_doux.jpg')), title: "Curry de crevettes doux", subtitle: "avec gambas", description: "J'aime beaucoup cette recette de curry de crevettes de ma nièce, Diane, mais je préfère les gambas. J'ai donc adapté la recette en passant les gambas à la plancha au préalable!", prep_time: "20 min", cook_time: "55 min", rest_time: "12 h", kind: "variant", published: true, published_on: "2019-04-02", user: thierry, original_recipe: curry_de_crevettes_doux, servings: 4, upvote: 4)

cake_citron_graines_pavot_variant_2_step_1 = Step.create!(recipe: cake_citron_graines_pavot_variant_2, position: 1, content: "Dans un bol, battre vivement le beurre et le sucre jusqu’à obtenir un mélange crémeux. Ajouter ensuite les ingrédients restants dans l’ordre et bien mélanger entre chaque ajout. Je vous recommande ici la farine de riz qui donnera une bonne texture au cake. Verser la préparation dans un moule à cake beurré. Enfourner dans un four préchauffé à 180°C et cuire 40 à 45mn (jusqu’à ce que la lame d’un couteau ressorte propre).  - Laisser le cake tiédir 10mn sans le démouler.")
cake_citron_graines_pavot_variant_2_step_2 = Step.create!(recipe: cake_citron_graines_pavot_variant_2, position: 2, content: "Pendant ce temps, mélanger les ingredients du 1er glaçage : 80g de sucre glace et le jus d'un demi citron, on doit obtenir un mélange plutôt liquide. Piquer le cake avec le couteau et verser doucement ce glaçage sur le dessus du cake toujours dans son moule pour l'imbiber. Laisser le cake absorber le glaçage et refroidir pendant environ 20 min.")
cake_citron_graines_pavot_variant_2_step_3 = Step.create!(recipe: cake_citron_graines_pavot_variant_2, position: 3, content: "Démouler ensuite le cake et le poser sur une grille à pâtisserie. Mélanger les ingrédients du 2e glaçage : 150g de sucre glace et le jus d’un demi citron, on doit il obtenir un mélange pas trop liquide et bien blanc (ajouter un peu de sucre glace si il est trop liquide). Verser doucement la moitié du glaçage blanc sur le dessus du cake, étaler jusqu’aux bords avec une spatule. Verser ensuite le reste du glaçage blanc sur le dessus du cake et le laisser couler sur les bords. Parsemer immédiatement de graines de pavots et de zestes de citron pour décorer le glaçage. Laisser ensuite le glaçage figer 12h sur la grille à pâtisserie sans le toucher.")
curry_de_crevettes_doux_variant_2_step_1   = Step.create!(recipe: curry_de_crevettes_doux_variant_2, position: 1, content: "Couper la tomate en petits morceaux, peler et écraser les gousses d'ail, émincer les oignons et passer les gambas à la plancha 5 minutes.")
curry_de_crevettes_doux_variant_2_step_2   = Step.create!(recipe: curry_de_crevettes_doux_variant_2, position: 2, content: "Dans une sauteuse ou un wok, chauffer l'huile. Mélanger ail, oignons et curry.")
curry_de_crevettes_doux_variant_2_step_3   = Step.create!(recipe: curry_de_crevettes_doux_variant_2, position: 3, content: "Quand les oignons sont translucides, mettre la tomate, le lait de coco et le yaourt à la grecque. Saler, poivrer, mélanger, mettre un couvercle et laisser mijoter pendant 15 minutes.")
curry_de_crevettes_doux_variant_2_step_4   = Step.create!(recipe: curry_de_crevettes_doux_variant_2, position: 4, content: "Rajouter les gambas et laisser cuire pendant 2 à 3 minutes. Servir avec du riz.")


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
Dose.create!(step: curry_de_crevettes_doux_variant_2_step_1, ingredient: tomate, quantity: 1)
Dose.create!(step: curry_de_crevettes_doux_variant_2_step_1, ingredient: oignon, quantity: 1)
Dose.create!(step: curry_de_crevettes_doux_variant_2_step_1, ingredient: gousse_d_ail, quantity: 2)
Dose.create!(step: curry_de_crevettes_doux_variant_2_step_1, ingredient: gambas, quantity: 800, unit: 'g')

Dose.create!(step: cake_citron_graines_pavot_variant_2_step_2, ingredient: sucre_glace, quantity: 80, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_variant_2_step_2, ingredient: jus_citron, quantity: 5, unit: 'cl')
Dose.create!(step: curry_de_crevettes_doux_variant_2_step_2, ingredient: huile_d_arachide, quantity: 3, unit: 'cuillère à soupe')
Dose.create!(step: curry_de_crevettes_doux_variant_2_step_2, ingredient: curry, quantity: 2, unit: 'cuillère à soupe')

Dose.create!(step: cake_citron_graines_pavot_variant_2_step_3, ingredient: sucre_glace, quantity: 150, unit: 'g')
Dose.create!(step: cake_citron_graines_pavot_variant_2_step_3, ingredient: jus_citron, quantity: 5, unit: 'cl')
Dose.create!(step: curry_de_crevettes_doux_variant_2_step_3, ingredient: yaourt_a_la_grecque, quantity: 1)
Dose.create!(step: curry_de_crevettes_doux_variant_2_step_3, ingredient: sel, quantity: 1, unit: 'une pincée')
Dose.create!(step: curry_de_crevettes_doux_variant_2_step_3, ingredient: poivre, quantity: 1, unit: 'une pincée')

Dose.create!(step: curry_de_crevettes_doux_variant_2_step_4, ingredient: gambas, quantity: 800, unit: 'g')

StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_1, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_1, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_1, utensil: moule)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_1, utensil: four)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_1, utensil: couteau)
StepUtensil.create!(step: curry_de_crevettes_doux_variant_2_step_1, utensil: couteau)
StepUtensil.create!(step: curry_de_crevettes_doux_variant_2_step_1, utensil: bol)

StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_2, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_2, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_2, utensil: couteau)
StepUtensil.create!(step: curry_de_crevettes_doux_variant_2_step_2, utensil: wok)


StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_3, utensil: fouet)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_3, utensil: bol)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_3, utensil: spatule)
StepUtensil.create!(step: cake_citron_graines_pavot_variant_2_step_3, utensil: grille_a_patisserie)
StepUtensil.create!(step: curry_de_crevettes_doux_variant_2_step_3, utensil: wok)


RecipeTag.create!(recipe: cake_citron_graines_pavot_variant_2, tag: allegee)
RecipeTag.create!(recipe: cake_citron_graines_pavot_variant_2, tag: sans_gluten)
RecipeTag.create!(recipe: curry_de_crevettes_doux_variant_2, tag: avec_gambas)

################################################################################
# VARIANT 3
################################################################################

puts 'Creating recipe variant 3'
cake_citron_graines_pavot_variant_3    = Recipe.create!(photo: File.open(Rails.root.join('db/fixtures/recipes/mini_cakes_au_citron.jpg')), title: "Cake au citron et graines de pavot", subtitle: "Version mini et sans graines de pavot", description: "Et voici une version mini, à partager et à emporter ! Et comme je ne suis pas très graines de pavot, j'ai fait sans.", prep_time: "10 min", cook_time: "55 min", rest_time: "12 h", kind: "variant", published: true, user: thierry, original_recipe: cake_citron_graines_pavot, servings: 4, upvote: 5)


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
