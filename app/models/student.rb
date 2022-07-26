class Student < ApplicationRecord
    validates :first_name, :last_name, :email, presence: true

    after_create :display_student_age

    def display_student_age
        if self.date_of_birth.present?
            age = Date.today.year - self.date_of_birth.year
            puts "==================Age of the student is #{age}==========="
        else
            puts "==============Age can not be calculated without date_of_birth==========="
        end
    end
end
