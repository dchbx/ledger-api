FactoryGirl.define do
  factory :person do
    first_name "MyString"
    last_name "MyString"
    is_active false
    user nil
  end
end
