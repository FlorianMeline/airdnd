puts "Cleaning database..."
Contract.destroy_all
Team.destroy_all
User.destroy_all

puts "Creating users..."
glandalf    = User.create!(name: "Glandalf le Gland", email: "glandalf@sarouelmandsl.com", password: "azerty")
file = File.open(Rails.root.join("db/seeds/users/glandaf.png"))
glandalf.avatar.attach(io: file, filename: "user.png", content_type: "image/png")

jean  = User.create!(name: "Jean Neige", email: "jean-neige@ariadls.com", password: "azerty")
file = File.open(Rails.root.join("db/seeds/users/jean neige.png"))
jean.avatar.attach(io: file, filename: "team.png", content_type: "image/png")

sam  = User.create!(name: "Sam Kenji", email: "samisam@lacomté.com", password: "azerty")
file = File.open(Rails.root.join("db/seeds/users/sam kenji.png"))
sam.avatar.attach(io: file, filename: "team.png", content_type: "image/png")

degolas = User.create!(name: "Degolas Plindhwil", email: "degolaszebest@elf.com", password: "azerty")
file = File.open(Rails.root.join("db/seeds/users/degolasse.png"))
degolas.avatar.attach(io: file, filename: "team.png", content_type: "image/png")

gordon = User.create!(name: "Trash Gordon", email: "gordon@trash.com", password: "azerty")
file = File.open(Rails.root.join("db/seeds/users/trash gordon.png"))
gordon.avatar.attach(io: file, filename: "team.png", content_type: "image/png")

puts "Users created"

puts "Creating teams..."
team_berserkers = Team.create!(
  owner: glandalf,
  name: "Les Berserkers",
  description: "Une équipe hors du commun se forme, réunissant un orc taciturne d'une puissance
  redoutable, un barde au caractère mal attentionné et une femme lugubre possédant
  d'étranges pouvoirs. L'orc, solide comme un roc, terrifie ses ennemis par sa force
  brute et son implacable détermination. Le barde, avec son humour cynique et ses
  mélodies trompeuses, manipule les émotions et sème le chaos dans les esprits de
  ceux qui l'entourent. La femme lugubre, avec ses pouvoirs énigmatiques et
  insondables, distille une aura de mystère et de fascination sombre. Ensemble, ils
  forment une équipe singulière, combinant la puissance, l'art de la tromperie et la
  magie obscure, prête à défier les conventions et à laisser leur marque dans les récits
  épiques de ce monde troublant.",
  success_rate: 4,
  price_per_day: 1000,
  dungeon_type: "Héroïque"
)

file = File.open(Rails.root.join("db/seeds/teams/les-berserkers.png"))
team_berserkers.photo.attach(io: file, filename: "team.png", content_type: "image/png")

team_belles = Team.create!(
  owner: glandalf,
  name: "Les belles et la bête",
  description: "Deux guerrières d'une beauté saisissante se tiennent aux côtés d'un loup-garou,
  symbole de férocité indomptable. Leurs mouvements gracieux et puissants
  évoquent la danse mortelle d'une symphonie guerrière. Unissant leurs forces, elles
  incarnent la perfection de la force, de la grâce et de la sauvagerie, formant une
  équipe redoutable dont la réputation se répand comme une légende dans les
  contrées épiques où elles se frayent un chemin",
  success_rate: 4,
  price_per_day: 2500,
  dungeon_type: "Héroïque"
)

file = File.open(Rails.root.join("db/seeds/teams/les-belles-et-la-bete.png"))
team_belles.photo.attach(io: file, filename: "team.png", content_type: "image/png")

team_meteor = Team.create!(
  owner: sam,
  name: "Meteor",
  description: "Cette équipe improbable réunit deux goblins assoiffés d'alcool et un dragon
  majestueux. Les goblins, connus pour leur amour insatiable de la boisson et leur
  nature espiègle, apportent une dose de chaos et de folie à leurs aventures. Le
  dragon, quant à lui, incarne la puissance dévastatrice et la présence imposante.
  Ensemble, ils forment un groupe redoutable, alliant les talents sournois des goblins à
  la force brute du dragon, prêts à terrasser leurs ennemis avec une fureur inégalée et
  à laisser une empreinte légendaire dans les récits épiques de ce monde fantastique.",
  success_rate: 5,
  price_per_day: 400,
  dungeon_type: "Légendaire"
)

file = File.open(Rails.root.join("db/seeds/teams/meteore.png"))
team_meteor.photo.attach(io: file, filename: "team.png", content_type: "image/png")

team_troll = Team.create!(
  owner: sam,
  name: "Troll neige et les 2 nains",
  description: "Deux nains guerriers, aussi robustes que les montagnes, se tiennent aux côtés d'un dragon féroce,
sa puissance incendiaire reflétant leur détermination inébranlable. Leurs armes étincellent, prêtes à affronter les plus
redoutables adversaires, tandis que le dragon déploie ses ailes majestueuses, prêt à cracher des flammes dévastatrices.
Ensemble, ils forment une équipe légendaire, où la férocité et la résilience se mêlent pour engendrer une force invincible,
dont le nom sera chanté à travers les âges.",
  success_rate: 1,
  price_per_day: 500,
  dungeon_type: "Commun"
)
file = File.open(Rails.root.join("db/seeds/teams/troll-neige-et-les-deux-nains.png"))
team_troll.photo.attach(io: file, filename: "team.png", content_type: "image/png")

team_trinite = Team.create!(
  owner: gordon,
  name: "La sainte trinitée",
  description: "Une magnifique guerrière, sa grâce et sa force inspirant respect et admiration,
  marche aux côtés d'un sombre guerrier elfique, dont la maîtrise des arts obscurs effraie les ténèbres elles-mêmes.
  Un barde joyeux les accompagne, sa musique envoûtante et ses mots d'espoir apportant une lueur d'allégresse dans les moments les plus sombres.
  Ensemble, cette équipe hétéroclite incarne un équilibre délicat entre la beauté, la puissance et la joie, prête à défendre les terres ravagées
  par les ombres avec une détermination inébranlable. ",
  success_rate: 3,
  price_per_day: 1250,
  dungeon_type: "Héroïque"
)
file = File.open(Rails.root.join("db/seeds/teams/la-sainte-trinite.png"))
team_trinite.photo.attach(io: file, filename: "team.png", content_type: "image/png")

team_samaritains = Team.create!(
  owner: gordon,
  name: "Les bons samaritains",
  description: "Une équipe épique se forge, rassemblant un guerrier barbare au courage indomptable,
  une elfe archère d'une précision mortelle et une mage d'une grâce féminine qui maîtrise les arcanes les plus puissantes.
  Le guerrier barbare fend les rangs ennemis avec une rage sauvage, tandis que l'elfe archère décoche ses flèches avec une précision implacable,
  et que la mage féminine manipule les énergies mystiques pour invoquer des sortilèges dévastateurs. Ensemble, cette équipe hétéroclite incarne la
  force brute, la précision mortelle et la magie envoûtante, prête à affronter les défis les plus redoutables et à laisser une légende derrière elle.",
  success_rate: 2,
  price_per_day: 700,
  dungeon_type: "Commun"
)
file = File.open(Rails.root.join("db/seeds/teams/les-bons-samaritain.png"))
team_samaritains.photo.attach(io: file, filename: "team.png", content_type: "image/png")

team_mordor = Team.create!(
  owner: jean,
  name: "Les anges du mordor",
  description: "une équipe sombre et troublante se forme, réunissant une femme à la forme
  démoniaque, un goblin alcoolique et un nécromancien à l'apparence sombre et
  lugubre. La femme démoniaque incarne la puissance infernale, ses yeux ardents et
  sa présence inquiétante inspirant crainte et respect. Le goblin alcoolique apporte
  une touche d'imprévisibilité et de folie à l'équipe, transformant le chaos en une force
  destructrice. Le nécromancien, enveloppé d'une aura sinistre, manipule les forces de
  la mort pour invoquer des créatures ténébreuses. Ensemble, ils forment une alliance
  impie, prête à semer la terreur et à assouvir leurs sombres desseins, dans une
  symphonie macabre qui ébranlera les fondements du monde.",
  success_rate: 4,
  price_per_day: 1600,
  dungeon_type: "Légendaire"
)
file = File.open(Rails.root.join("db/seeds/teams/les-anges-du-mordor.png"))
team_mordor.photo.attach(io: file, filename: "team.png", content_type: "image/png")

team_culte = Team.create!(
  owner: gordon,
  name: "Le Culte",
  description: "Une équipe sinistre et mystérieuse se forme, rassemblant un reptile énorme et
  féroce, une elfe maléfique et un loup-garou, tous membres d'un culte sombre et
  énigmatique. Le reptile, doté d'écailles impénétrables et d'un souffle dévastateur,
  inspire terreur et obéissance. L'elfe maléfique manie les arts occultes avec une
  grâce perfide, déchaînant des malédictions et des sortilèges sur ses ennemis. Le
  loup-garou, dans sa forme hybride, incarne la fureur bestiale et la puissance
  surnaturelle. Ensemble, ces êtres obscurs forment une équipe redoutable,
  embrassant les ténèbres et semant la destruction sur leur passage, dans le cadre
  des machinations de leur culte mystérieux.",
  success_rate: 5,
  price_per_day: 1500,
  dungeon_type: "Légendaire"
)
file = File.open(Rails.root.join("db/seeds/teams/le-culte.png"))
team_culte.photo.attach(io: file, filename: "team.png", content_type: "image/png")

team_ombres = Team.create!(
  owner: sam,
  name: "Les Briseurs d'ombres",
  description: "Une équipe légendaire se forme, réunissant un homme immense et bourru dont la
  force est inégalée, une sorcière Voodoo aux pouvoirs obscurs et mystérieux, et une
  assassine aussi silencieuse qu'une ombre. L'homme imposant frappe avec une
  puissance dévastatrice, terrifiant ses adversaires par sa simple présence. La
  sorcière Voodoo manipule les énergies sombres pour maudire ses ennemis et
  invoquer des malédictions redoutables. L'assassine se déplace avec une grâce
  mortelle, éliminant ses cibles sans laisser de trace. Ensemble, ils forment une équipe
  redoutable, combinant force brute, magie vaudou et art mortel de l'assassinat, prête
  à déjouer les plans des plus puissants ennemis et à écrire leur propre légende.",
  success_rate: 4,
  price_per_day: 1000,
  dungeon_type: "Héroïque"
)
file = File.open(Rails.root.join("db/seeds/teams/briseurs-d_ombre.png"))
team_ombres.photo.attach(io: file, filename: "team.png", content_type: "image/png")

team_peste = Team.create!(
  owner: degolas,
  name: "La peste, le velu et le cambrioleur",
  description: "Une équipe insolite se rassemble, réunissant une femme désagréable à la langue
  acérée, un grand troll velu et puant, et un voleur espiègle à l'agilité déconcertante.
  Malgré leurs différences, cette équipe improbable déploie une efficacité redoutable.
  La femme désagréable manipule les esprits et sait mettre ses ennemis en déroute
  par ses remarques cinglantes. Le troll, avec sa force brutale, écrase tout sur son
  passage, tandis que le voleur rusé s'infiltre dans l'ombre, dérobant les richesses les
  plus précieuses. Ensemble, ils défient les attentes, apportant chaos et hilarité, et
  formant une équipe dont les exploits ne manqueront pas de faire parler d'eux.",
  success_rate: 2,
  price_per_day: 700,
  dungeon_type: "Commun"
)
file = File.open(Rails.root.join("db/seeds/teams/la-peste-le-velu-et-le-cambrioleur.png"))
team_peste.photo.attach(io: file, filename: "team.png", content_type: "image/png")

team_protecteurs = Team.create!(
  owner: degolas,
  name: "Les protecteurs",
  description: "Une équipe épique se forme, réunissant un guerrier elfe archer d'une précision
  inégalée, une femme guerrière maniant épée et bouclier avec une maîtrise
  inébranlable, et une barde d'une beauté enchanteresse, capable d'inspirer ses
  compagnons par ses chants envoûtants. L'archer elfe décoche ses flèches avec une
  grâce mortelle, la femme guerrière défend avec bravoure ses alliés, et la barde
  évoque des mélodies magiques qui renforcent le courage de son équipe. Ensemble,
  ils forment un trio légendaire, équilibrant agilité, puissance et charme, prêt à
  affronter les défis les plus redoutables et à inscrire leur nom dans les annales des
  héros",
  success_rate: 3,
  price_per_day: 600,
  dungeon_type: "Héroïque"
)
file = File.open(Rails.root.join("db/seeds/teams/les-protecteurs.png"))
team_protecteurs.photo.attach(io: file, filename: "team.png", content_type: "image/png")

puts "Teams created"
puts "Generating contract..."
Contract.create!(
  renter: sam,
  team: team_berserkers,
  begin_date: "2023-07-15",
  end_date: "2023-07-25",
  total_price: 10_000,
  status: "pending"
)

Contract.create!(
  renter: degolas,
  team: team_belles,
  begin_date: "2023-08-27",
  end_date: "2023-09-01",
  total_price: 15_000,
  status: "pending"
)

Contract.create!(
  renter: glandalf,
  team: team_meteor,
  begin_date: "2023-06-01",
  end_date: "2023-06-04",
  total_price: 1_600,
  status: "pending"
)

Contract.create!(
  renter: sam,
  team: team_troll,
  begin_date: "2023-10-15",
  end_date: "2023-10-30",
  total_price: 7_500,
  status: "pending"
)

Contract.create!(
  renter: jean,
  team: team_trinite,
  begin_date: "2023-11-11",
  end_date: "2023-11-29",
  total_price: 22_500,
  status: "pending"
)

Contract.create!(
  renter: jean,
  team: team_samaritains,
  begin_date: "2023-10-02",
  end_date: "2023-10-25",
  total_price: 16_100,
  status: "pending"
)

Contract.create!(
  renter: sam,
  team: team_mordor,
  begin_date: "2024-06-06",
  end_date: "2023-09-01",
  total_price: 446_400,
  status: "pending"
)

Contract.create!(
  renter: gordon,
  team: team_culte,
  begin_date: "2023-06-01",
  end_date: "2023-06-10",
  total_price: 13_500,
  status: "pending"
)

Contract.create!(
  renter: gordon,
  team: team_ombres,
  begin_date: "2023-05-04",
  end_date: "2023-06-12",
  total_price: 8_000,
  status: "pending"
)

Contract.create!(
  renter: jean,
  team: team_protecteurs,
  begin_date: "2023-05-01",
  end_date: "2023-06-10",
  total_price: 5_400,
  status: "pending"
)
puts "Contracts created"
puts "Finished!"
