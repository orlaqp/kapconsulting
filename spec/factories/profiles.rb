# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    first_name "MyString"
    middle_name "MyString"
    last_name "MyString"
    phone_number "MyString"
    time_zone "MyString"
    email "MyString"
  end
end
