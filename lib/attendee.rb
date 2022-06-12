# Instructions
# Working with an amusement park, you've been handed a specification to design a system to administer attendance and rides. 
# You've been tasked with modeling the Attendee (person visiting the park).

# 1. Make new attendees
# Implement the Attendee#initialize method of the Attendee class, 
# it should take a height (in centimeters) and store it as an instance 

# 2. How tall is the attendee
# Implement the Attendee#height getter of the Attendee class, it should return the instances 

# 3. What is the ride pass id
# Not all attendees have bought a ride pass, but we need to know if they have a pass or not. 
# Implement the Attendee#pass_id getter for the Attendee class, 
# it should return the instance's pass_id or nil if the Attendee doesn't have one.

# 4. Allow people to buy a pass
# Implement Attendee#issue_pass! to mutate the state of the instance, 
# and set the pass id instance variable to the argument. It should return the pass id.

# 5. Revoke the pass
# Some guests break the rules with unsafe behavior, so the park wants to be able to revoke passes. 
# Implement Attendee#revoke_pass to mutate the state of the instance, and set the pass id to nil


class Attendee
    def initialize(height)
      @height = height
    end

    def height
      return @height
    end

    def pass_id
      return @pass_id if @pass_id != nil
    end

    def issue_pass!(pass_id)
      @pass_id = pass_id
    end
    
    def revoke_pass!
      @pass_id = nil
    end
end

attendee = Attendee.new(106)
attendee.issue_pass!(42)
attendee.revoke_pass!
puts attendee.pass_id