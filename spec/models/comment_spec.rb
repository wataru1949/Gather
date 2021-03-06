# require "rails_helper"

# describe Comment do
#   describe "#create" do
#     context "commentを保存できる場合" do
#       example "本文があれば保存できる" do
#         expect(build(:comment, comment_image: nil)).to be_valid
#       end

#       example "画像があれば保存できる" do
#         expect(build(:comment, comment: nil)).to be_valid
#       end

#       example "本文と画像があれば保存できる" do
#         expect(build(:comment)).to be_valid
#       end
#     end

#     context "commentを保存できない場合" do
#       example "本文と画像が両方空だと保存できない" do
#         comment = build(:comment, comment: nil, comment_image: nil)
#         comment.valid?
#         expect(comment.errors[:comment]).to include("を入力してください")
#       end

#       example "post_idが無いと保存できない" do
#         comment = build(:comment, post_id: nil)
#         comment.valid?
#         expect(comment.errors[:post]).to include("を入力してください")
#       end

#       example "user_idが無いと保存できない" do
#         comment = build(:comment, user_id: nil)
#         comment.valid?
#         expect(comment.errors[:user]).to include("を入力してください")
#       end
#     end
#   end
# end
