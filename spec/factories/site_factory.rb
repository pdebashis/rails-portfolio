module Portfolio
  FactoryBot.define do
    factory :site, class: Portfolio::Site do
      person_name { FFaker::Name.name }
      job_title   { FFaker::Job.title }
      greetings   { FFaker::Lorem.sentence }
      summary     { FFaker::Lorem.paragraph }

      factory :site_with_projects do
        after :create do |site, evaluator|
          create_list :site_project, 2, site: site, public: true
          create_list :site_project, 2, site: site, public: false
        end
      end

      factory :site_with_categorized_projects do
        after :create do |site, evaluator|
          categ1 = create :site_item_category
          categ2 = create :site_item_category
          tag = create :site_item_tag

          create :site_project_with_category, site: site,
                 public: true, site_item_category: categ1,
                 featured: true, site_item_tags: [tag]

          create :site_project_with_category, site: site,
                 public: false, site_item_category: categ2

          create :site_project_with_category, site: site,
                 public: true, site_item_category: categ2

          create :site_project_with_category, site: site,
                 public: false, site_item_category: categ1
        end
      end
    end
  end
end
