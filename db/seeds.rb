Center.destroy_all
Language.destroy_all
Code.destroy_all

paris = Center.create!(location: "Paris")
paris.boss = Boss.first
paris.save!
Center.create!(location: "NYC")
Center.create!(location: "Moscow")

ruby = Language.create!(name: "ruby")

Center.find_each do |center|
  center.codes.create!(
    quantity: 10,
    unit_price: 5000,
    language_id: ruby.id
  )
end