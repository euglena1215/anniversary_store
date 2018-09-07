class ResultController < ApplicationController
  # before_action :authenticate_user!

  def index
    # @me = current_user
    @me = User.find(1) # ケンイチに固定
    @self_evaluations = Evaluation.where(user: @me)

    # coupleが同時に複数いない前提
    couple = Couple.where(user1: @me).or(Couple.where(user2: @me)).where(ended_at: nil).first
    @partner = couple.user1 == @me ? couple.user2 : couple.user1
    @partner_evaluations = Evaluation.where(user: @partner)

    @event = Event.find_by(id: params[:event_id])

    @alliances = Alliance.all
    @suggest_messages = ["料理下手な", "物を捨てられない"]
  end
end
