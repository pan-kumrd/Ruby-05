require 'rails_helper'

RSpec.describe Comment, type: :model do

  let(:post) { create(:post) }
  let(:comment) { build(:comment, post: post) }

  describe "#validations" do
    it "has non-empty author" do
      instance = build(:comment, author: nil)
      expect(instance.valid?).to eq(false)
    end

    it "has a post" do
      expect(comment.post).to eq(post)
    end
  end

end
