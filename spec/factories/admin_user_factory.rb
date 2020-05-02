FactoryBot.define do
  factory :admin_user, class: Portfolio::AdminUser do
    pass = FFaker::Internet.password
    email { FFaker::Internet.email } 
    password { pass }

    before(:validation) do |user|
      user.password_confirmation = pass
    end
  end
end
