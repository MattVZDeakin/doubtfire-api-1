class DashboardController < ApplicationController
  before_filter :authenticate_user!
  before_filter :load_current_user

  def index
    @teams = @user.team_memberships.map{|team_membership| team_membership.team }
    @projects = @teams.map{|team| team.project }
  end

  private

  def load_current_user
    @user = current_user
  end
end