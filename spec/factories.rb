FactoryGirl.define do
  factory :user do
    name                  "Michael Helfer"
    email                 "mike@gmail.com"
    password              "password"
    password_confirmation "password"
  end
end