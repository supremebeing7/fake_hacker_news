FactoryGirl.define do
  factory :link do
    description 'IE6 is finally dead'
    url 'http://microsoft.com'
    vote_count 1
    user_name 'frankie23131'
  end

  factory :comment do
    content 'This post is total bs.  I have been using IE for a long time and it is the best browserevery invented.  Bill Gates is a genius.  Steve Jobs is a jerk and all you Apple users can suck it!!!!'
    user_name 'b_gates'
    commentable_id 4
    commentable_type 'Link'
  end
end
