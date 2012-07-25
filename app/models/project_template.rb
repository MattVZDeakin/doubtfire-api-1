class ProjectTemplate < ActiveRecord::Base
  attr_accessible :description, :end_date, :name, :start_date
  validates_presence_of :name, :description, :start_date, :end_date

  # Accessor to allow setting of convenors via the new/edit form
  attr_accessor :convenors  

  # Model associations
  has_many :task_templates
  has_many :projects
  has_many :teams
  has_many :project_administrators
  
end