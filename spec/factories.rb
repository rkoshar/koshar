FactoryGirl.define do
  factory :user do
    firstname   "Ryan"
    lastname    "Koshar"
    username    "rkoshar"
    email       "rkoshar@butt.com"
    password    "123456"
    password_confirmation "123456"
  end
end