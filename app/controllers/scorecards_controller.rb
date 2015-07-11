class ScorecardsController < ApplicationController
  def new
    @scorecard = Scorecard.new
  end
end
