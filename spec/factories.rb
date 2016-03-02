FactoryGirl.define do
  factory :admin, class: User do
    email "admin@admin.com"
    password "secret"
    admin true
  end
end
