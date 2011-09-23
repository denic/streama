class Activity
  include Streama::Activity
  
  activity :enquiry do
    actor :user, :cache => [:full_name]
    object :enquiry, :cache => [:subject]
    target :listing, :cache => [:title]
    translation :proc, lambda{ |a| return "#{a.actor.full_name} posted #{a.enquiry.comment}" }
  end
  
end
