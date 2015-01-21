class CourseController < ApplicationController
  def eval
  	@gradebreakdown = Hash.new
  	@gradebreakdown[:Participation] = 5
  	@gradebreakdown[:Homework] = 45
  	@gradebreakdown[:Exams] = 50
  end

  def announce
  	@date = Date.new(2015,2,1)
  end

  def scores
  	flash[:notice] = "No scores available yet"
  	redirect_to :action => 'announce'
  end
end
