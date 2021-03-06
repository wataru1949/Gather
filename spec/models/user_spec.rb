# require "rails_helper"

# describe User do
#   describe "値の正規化" do
#     example "email前後の空白を除去" do
#       member = create(:user, email: " test@example.com ")
#       expect(member.email).to eq("test@example.com")  
#     end

#     example "emailに含まれる全角英数字記号を半角に変換" do
#       member = create(:user, email: "ｔｅｓｔ＠ｅｘａｍｐｌｅ．ｃｏｍ")
#       expect(member.email).to eq("test@example.com")
#     end

#     example "email前後の全角スペースを除去" do
#       member = create(:user, email: "\u{3000}test@example.com\u{3000}")
#       expect(member.email).to eq("test@example.com")  
#     end
#   end

#   describe "バリデーション" do
    
#     example "ユーザーが登録できる" do
#       user = build(:user)
#       expect(user).to be_valid
#     end

#     example "ニックネームがない場合は登録できない" do
#       user = build(:user, nickname: nil)
#       user.valid?
#       expect(user.errors[:nickname]).to include("を入力してください")
#     end

#     example "メールアドレスがない場合は登録できない" do
#       user = build(:user, email: nil)
#       user.valid?
#       expect(user.errors[:email]).to include("を入力してください")
#     end

#     example "パスワードがない場合は登録できない" do
#       user = build(:user, password: nil)
#       user.valid?
#       expect(user.errors[:password]).to include("を入力してください")
#     end

#     example "パスワードが存在しても確認用パスワードがない場合は登録できない" do
#       user = build(:user, password_confirmation: "")
#       user.valid?
#       expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
#     end

#     example " ニックネームが11文字以上であれば登録できない" do
#       user = build(:user, nickname: "aaaaaaaaaaa")
#       user.valid?
#       expect(user.errors[:nickname]).to include("は10文字以内で入力してください")
#     end

#     example "ニックネームが10文字以下では登録できる " do
#       user = build(:user, nickname: "aaaaaaaaaa")
#       expect(user).to be_valid
#     end

#     example "重複したメールアドレスが存在する場合は登録できない" do
#       user = create(:user)
#       another_user = build(:user, email: user.email)
#       another_user.valid?
#       expect(another_user.errors[:email]).to include("はすでに存在します")
#     end

#     example "@を2個含むemailは無効" do
#       member = build(:user, email: "test@@example.com")
#       expect(member).not_to be_valid 
#     end

#     example "パスワードが6文字以上であれば登録できる" do
#       user = build(:user, password: "000000", password_confirmation: "000000")
#       expect(user).to be_valid
#     end

#     example "パスワードが5文字以下であれば登録できない" do
#       user = build(:user, password: "00000", password_confirmation: "00000")
#       user.valid?
#       expect(user.errors[:password]).to include("は6文字以上で入力してください")
#     end
#   end
# end
