class ApplicationController < ActionController::Base

  helper_method :current_announces, :show_nav_bar?

  def current_announces
    @announces = Announce.all.where.not(user_id: nil)
  end

  def show_nav_bar?
    user_signed_in? && current_announces.present?
  end
end
