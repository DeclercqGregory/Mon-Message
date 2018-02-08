class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
  end
  def comment_enregistrer_son_message
  end

  def ais_je_un_message
  end

  def join_us
  end
end
