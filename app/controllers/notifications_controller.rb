class NotificationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @title = 'Notificaciones'
  end
end
