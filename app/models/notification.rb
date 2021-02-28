# == Schema Information
#
# Table name: notifications
#
#  id         :uuid             not null, primary key
#  item_type  :string
#  viewed     :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  item_id    :bigint
#  user_id    :uuid
#
# Indexes
#
#  index_notifications_on_item_type_and_item_id  (item_type,item_id)
#  index_notifications_on_user_id                (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Notification < ApplicationRecord
  belongs_to :user
end
