class ResultController < ApplicationController
  before_action :authenticate_user!

  def index
    @me = current_user
    @self_evaluations = Evaluation.where(user: current_user)

    # coupleが同時に複数いない前提
    couple = Couple.where(user1: current_user).or(Couple.where(user2: current_user)).where(ended_at: nil).first
    @partner = couple.user1 == current_user ? couple.user2 : couple.user1
    @partner_evaluations = Evaluation.where(user: @partner)

    @event = Event.find_by(id: params[:event_id])
  end
end
