FactoryGirl.define do
  factory :post do
    sequence :author do |n|
      "Post author #{n}"
    end

    sequence :title do |n|
      "Post title #{n}"
    end

    body "Body of a post"
  end

end
