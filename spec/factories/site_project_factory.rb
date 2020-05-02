FactoryBot.define do
  factory :site_project, class: Portfolio::SiteProject do
    title { FFaker::Company.name }
    site

    factory :site_project_with_category do
      site_item_category
    end
  end
end
