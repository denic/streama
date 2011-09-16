class Activity
  include Streama::Activity
  
  activity :enquiry do
    actor :user, :cache => [:full_name]
    object :enquiry, :cache => [:subject]
    target :listing, :cache => [:title]
    translation :text, lambda{ return "#{@attributes[:actor].full_name} posted #{@attributes[:enquiry].comment}" }
  end
  
end
