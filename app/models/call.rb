class Call < ApplicationRecord
    before_create :greeting_message

    # def greeting_message
    #     puts "Hey I will run before create"
    # end

    before_create do
        puts "--------------Hey I will run before create-----------"
    end
end
