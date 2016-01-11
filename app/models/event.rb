class Event < ActiveRecord::Base

  validates_presence_of :period, message: "deve ser preenchido"
  validates_presence_of :title, message: "deve ser preenchido"
  validates_presence_of :morning, message: "deve ser preenchido"

  validates_numericality_of :period, greater_than: 0, message: "deve ser um maior que 0"
end
