require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /posts" do
    it "works! (now write some real specs)" do
      get posts_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /posts/1' do
    it 'gets the first post' do
      first_post = Post.create!(title: 'The first post', content: 'This is the first post')
      get post_path(first_post) # GET /posts/1
      expect(response).to have_http_status(200) #success
      expect(response).not_to have_http_status(404) #success

    end
  end
end
