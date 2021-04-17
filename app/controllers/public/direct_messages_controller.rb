class Public::DirectMessagesController < ApplicationController
  before_action :authenticate_user!
end
