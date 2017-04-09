class Student < ApplicationRecord
  has_many :courses, :through => :teacher_relationships, :source => :teacher
  has_many :teachers, :through => :course_relationships, :source => :course

  has_many :teacher_relationships
  has_many :course_relationships
end
