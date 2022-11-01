# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  email: 'admin@mail',
  password: '123456789'
)

User.create!(
  [
    {email: 'a@mail',name: 'かめ',password: '123456'},
    {email: 'b@mail',name: 'サメ',password: '123456'},
    {email: 'c@mail',name: 'イルカ',password: '123456'}
  ]

)

RakutenGame.create!(
  [
    {title: 'ポケットモンスター ソード',hardware: 'Nintendo Switch',item_url: 'https://books.rakuten.co.jp/rb/15984061/',
    smallimage_url: 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/3889/4902370543889.jpg?_ex=120x120',
    largeimage_url: 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/3889/4902370543889.jpg?_ex=200x200'},

    {title: 'Pokemon LEGENDS アルセウス',hardware: 'Nintendo Switch',item_url: 'https://books.rakuten.co.jp/rb/16855995/',
    smallimage_url: 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/9034/4902370549034_1_2.jpg?_ex=120x120',
    largeimage_url: 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/9034/4902370549034_1_2.jpg?_ex=200x200'},

    {title: 'ゼルダの伝説 スカイウォードソード HD',hardware: 'Nintendo Switch',item_url: 'https://books.rakuten.co.jp/rb/16653941/',
    smallimage_url: 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/7955/4902370547955.jpg?_ex=120x120',
    largeimage_url: 'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/7955/4902370547955.jpg?_ex=200x200'}
  ]
)

Review.create!(
  [
    {rakuten_game_id: 1,title: 'とてもいい',review: 'かなりの時間楽しむことができました',score: 4,user_id: 1 },
    {rakuten_game_id: 2,title: '最高',review: 'ポケモンのゲームを初めて触ったけどすごく楽しめた',score: 4,user_id: 1 },
    {rakuten_game_id: 1,title: '最高の出来です',review: '今までで一番面白いゲームでした。育成が好きな人におすすめ',score: 5,user_id: 2 },
    {rakuten_game_id: 3,title: '面白いです',review: '少し難しかったですがとても楽しめました',score: 5,user_id: 2 }
  ]
)

Comment.create!(
  [
    {review_id: 1,user_id: 2,comment: '私もそう思います！'},
    {review_id: 1,user_id: 3,comment: 'やってみたいと思います！'},
    {review_id: 3,user_id: 3,comment: '参考になりました！'}
  ]
)

