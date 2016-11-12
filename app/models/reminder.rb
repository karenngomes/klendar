class Reminder < ActiveRecord::Base
  validates_presence_of :title, :description, :date, :remind_me
  validates :title, uniqueness: { message: "don't repeat your fucking titles" }
  validate :validates_date
  private
  def validates_date
    if remind_me > date
      self.errors.add(:remind_me, :invalid, message: 'are you a fucking timelord, m8?')

    end


  end
end
