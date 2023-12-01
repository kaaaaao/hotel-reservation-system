class Booking < ApplicationRecord

    belongs_to :user, optional: true
	validates :reserve_name, presence: true
	# validates :reserve_date, presence: true
	validates :room_type, presence: true, inclusion: { in: ['single', 'double', 'twin'] }
	validates :plan, presence: true, inclusion: { in: ['economy', 'normal', 'special'] }
	attribute :start_time, :datetime
	validate :start_time_uniqueness_by_date
	validate :date_before_start

	def start_time_uniqueness_by_date
 	 	if Booking.exists?(start_time: start_time.beginning_of_day..start_time.end_of_day)
			errors.add(:base, "#{start_time.to_date} は他のユーザーが予約しています")
	  	end
	end

	def date_before_start
		errors.add(:base, '過去の日付は選択できません') if start_time < Date.today
	end

	# validates :start_time, uniqueness: { message: 'は他のユーザーが予約しています' }
	# validates :date_before_start

	# def date_before_start
	# 	errors.add(:start_time, "は過去の日付を選択できません")if start_time < Date.today
	# end

end
