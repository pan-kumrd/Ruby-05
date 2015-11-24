FactoryGirl.define do
  factory :comment do
    sequence :author do |n|
      "Author #{n}"
    end

    body 'Some comment body'
    post
  end

end
