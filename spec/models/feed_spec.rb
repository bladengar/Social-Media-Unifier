require 'rails_helper'

RSpec.describe Feed, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  subject{described_class.new(username: "None", user_id: "-1")}
  
  user = User.new(id: 1, name: "Name", uid: "uid", provider: "Provider",
    token: "Token", secret: "Secret", profile_image: "Image")
    
    
  
  describe "find_or_create_from_user" do
      it "successfully creates feed from a user" do
          new_feed = Feed.find_or_create_from_user(user)
          expect(new_feed.username).to eq("Name")
          expect(new_feed.user_id).to eq(1)
      end 
      
      it "successfully finds a feed for a user" do
        allow(Feed).to receive_message_chain(:where, :first_or_create).and_return(subject)
        found_feed = Feed.find_or_create_from_user(user)
        expect(found_feed.username).to eq("None")
        expect(found_feed.user_id).to eq(-1)
      end
  end 
end