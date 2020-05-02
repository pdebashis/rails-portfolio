FactoryBot.define do
  factory :site_item_category, class: Portfolio::SiteItemCategory do
    name { FFaker::Lorem.word }
  end
end
