class MyAnnouncementsController < AnnouncesController
  def index
    @my_announcements = current_user.announces
  end
end
