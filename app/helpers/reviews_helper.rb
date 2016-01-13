module ReviewsHelper

  # find the average of all the reviews for an individual expert
  def average expert 
    for review in Review.where(expert_id: @expert)
      result = Review.average(:rate)
      return result
    end
  end
  
end