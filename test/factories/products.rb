# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :product do |f|
  f.name "MyString"
  f.meta "MyString"
  f.desc "MyText"
  f.price "9.99"
  f.state "MyString"
  f.inventory 1
end