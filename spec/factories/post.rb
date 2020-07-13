FactoryBot.define do

  factory :post do
    title          {Faker::Lorem.sentence}
    detail         {Faker::Lorem.sentence}
    prefecture_id  {Faker::Number.within(range: 1..48)}
    accept_id      {Faker::Number.within(range: 1..4)}
    date           {Faker::Date.in_date_period}
    start_time     {"21:00:00"}
    end_time       {"21:00:00"}
    post_image     {File.open("#{Rails.root}/public/images/test_image.jpg")}
    created_at     { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    user
  end

end
