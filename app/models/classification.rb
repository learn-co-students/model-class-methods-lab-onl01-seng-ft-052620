class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  #returns all classifications
  def self.my_all
    all
  end

  #returns the classifications for the longest boat
  #Failure/Error: expect(Classification.longest.pluck(:name)).to eq(classifications)
  def self.longest
    Boat.longest.classifications
  end

end
