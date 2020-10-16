# == Schema Information
#
# Table name: group_users
#
#  id         :bigint           not null, primary key
#  rejected   :boolean          default(FALSE), not null
#  status     :string(255)      not null
#  type       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  group_id   :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_group_users_on_group_id              (group_id)
#  index_group_users_on_group_id_and_user_id  (group_id,user_id) UNIQUE
#  index_group_users_on_status                (status)
#  index_group_users_on_user_id               (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (group_id => groups.id)
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class GroupUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
