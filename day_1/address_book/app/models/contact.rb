class Contact < ActiveRecord::Base
  # def self.iron_find(id)
  #   Project.where(id: id).first
  # end

  # def self.clean_old
  #   Project.where('created_at <= ?', 1.week.ago).destroy_all
  # end

  # def self.last_created_projects(number)
  #   Project.order(created_at: :desc).limit(number)
  # end

  def self.show_all
    Contact.where('id > ?',0)
  end
end
