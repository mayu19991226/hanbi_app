# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# ヒアドキュメントを使用して長い説明文を記述する例
eye_description = <<-BODY.strip_heredoc
  <h2 class="text-xl font-bold mb-4">目元の整形におすすめアイテム５選</h2>
  <p class="text-lg">冷えピタを買いましょう。他にも...</p>
BODY

AreaCategory.create!(
  title: "目",
  area_image: "/assets/eye.JPEG",
  body_image: "/assets/eye_body.jpg",
  body: eye_description
  )