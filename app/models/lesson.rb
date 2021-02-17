# == Schema Information
#
# Table name: lessons
#
#  id         :uuid             not null, primary key
#  nombre     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  course_id  :uuid
#
# Indexes
#
#  index_lessons_on_course_id  (course_id)
#
# Foreign Keys
#
#  fk_rails_...  (course_id => courses.id)
#
class Lesson < ApplicationRecord
  belongs_to :course
end
