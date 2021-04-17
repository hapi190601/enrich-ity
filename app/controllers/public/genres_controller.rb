class Public::GenresController < ApplicationController
  before_action :authenticate_user!
end
