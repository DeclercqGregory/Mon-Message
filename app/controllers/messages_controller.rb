class MessagesController < ApplicationController
  def index
  end

  def new
    @message = Message.new

  end

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    if @message.save
    redirect_to root_path
  else
    render :new #permet d'envoyer un msg erreur du champ manquant
  end
end

  def edit
  end

  def update
    @uploader.update_attribute :message_key, params[:key]
  end

  def destroy
  end

private
def message_params
  params.require(:message).permit(:createur_name, :createur_prenom, :createur_date_naissance, :createur_ville_naissance,
    :createur_pays_naissance, :createur_rue, :createur_codepostal, :createur_ville, :createur_pays, :createur_mail, :createur_tel,
    :dest_nom, :dest_prenom, :dest_mail, :dest_tel, :dest_rue, :dest_codepostal, :dest_ville, :dest_pays, :dest_2_nom, :dest_2_prenom,
    :dest_2_mail, :dest_2_tel, :dest_2_rue, :dest_2_codepostal, :dest_2_ville, :dest_2_pays, :video)
end
end
