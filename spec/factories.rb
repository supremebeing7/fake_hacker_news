FactoryGirl.define do
  factory :link, :class => Link do
    description 'IE6 is finally dead'
    url 'http://microsoft.com'
    vote_count 1
    user_name 'frankie23131'
  end
end
