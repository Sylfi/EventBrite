class Event < ApplicationRecord
    has_many :attendances
    has_many :users, trough: :attendances
    validates :start_date, presence: true
    validates :duration, presence: true, confirmation: multiple_of_five
    validates :title, presence: true, lenght: { in : 5..40 } 
    validates :description, presence: true, lenght: {in : 20..1000}
    validates :price, presence: true, greater_than: 0, less_than: 1001
    validates :location, presence: true

    def multiple_of_five?
        (duration % 5) == 0
    end

end
