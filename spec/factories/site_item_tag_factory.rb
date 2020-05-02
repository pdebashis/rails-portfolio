FactoryBot.define do
  factory :site_item_tag, class: Portfolio::SiteItemTag do
    name { FFaker::Lorem.word }
  end
end
