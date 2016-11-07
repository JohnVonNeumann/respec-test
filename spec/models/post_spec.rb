require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'orders by title' do

    first = Post.create!(title: 'The first post.', content: 'It\'s the first post of many')
    second = Post.create!(title: 'The second post.', content: 'It\'s the second post of many')

    expect(Post.order(:title)).to eq([first, second])
  end
end
