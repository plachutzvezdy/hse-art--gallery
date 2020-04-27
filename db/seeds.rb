# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rake::Task['db:drop'].invoke
Rake::Task['db:create'].invoke
Rake::Task['db:migrate'].invoke

@cover_path = "public/uploads/"

def cover (file_name)
  File.open(File.join(Rails.root, @cover_path + file_name))
end

articles = [
  {
    title: "WHAT TIME ARE YOU?",
    about: "Мы существуем в одном физическом времени, но воспринимаем его по-разному. С появлением новых медиа
и компьютерных игр человек получил возможность заполнять физическое время цифровым пространством, а цифровое время редактировать по своему желанию: ставить на паузу, ускорять, замедлять. Персонажи одних игр не стареют,
а в других цифровых мирах построение городов занимает считанные секунды.",
    date: "11.09 — 06.10",
    cover: cover("cover.png")
  }, {
    title: "Новые лозунги",
    about: "Кураторы пригласили студентов поразмышлять о том, что в эпоху релятивизма и бесконечных перемен можно считать постоянным и надежным",
    date: "11.09 — 06.10",
    cover: cover("cover1.jpg")
  }, {
    title: "Твёрдые вещи",
    about: "Кураторы пригласили студентов поразмышлять о том, что в эпоху релятивизма и бесконечных перемен можно считать постоянным и надежным",
    date: "11.09 — 06.10",
    cover: cover("cover2.jpg")
  }, {
    title: "Настоящее прошлое",
    about: "Кураторы пригласили студентов поразмышлять о том, что в эпоху релятивизма и бесконечных перемен можно считать постоянным и надежным",
    date: "11.09 — 06.10",
    cover: cover("cover3.jpg")
  }, {
    title: "WHAT TIME ARE YOU?",
    about: "Кураторы пригласили студентов поразмышлять о том, что в эпоху релятивизма и бесконечных перемен можно считать постоянным и надежным. Кураторы пригласили студентов поразмышлять о том, что в эпоху релятивизма и бесконечных перемен можно считать постоянным и надежным. ",
    date: "11.09 — 06.10",
    cover: cover("cover4.jpg")
  }, {
    title: "Новые лозунги",
    about: "Кураторы пригласили студентов поразмышлять о том, что в эпоху релятивизма и бесконечных перемен можно считать постоянным и надежным",
    date: "11.09 — 06.10",
    cover: cover("cover5.jpg")
  }
]

articles.each do |ar|
  a = Article.create!(ar)
  puts a.title
end
