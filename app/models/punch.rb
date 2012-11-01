class Punch < ActiveRecord::Base
  attr_accessible :in, :issue_id, :note, :out, :project_id, :user_id
end
