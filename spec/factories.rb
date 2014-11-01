FactoryGirl.define do
  factory :user do
    # name     "Iancui"
    # email    "iancui@tom.com"
    sequence(:name) {|n| "Person #{n}"}
    sequence(:email) {|n| "pserson_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"
  end
  factory :admin do
  	admin true
  end
end