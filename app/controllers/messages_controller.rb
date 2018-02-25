class MessagesController < ApplicationController

def index
  @message = current_user.messages

end

def show
  @msg1 = current_user.messages
  @message = Message.find(params[:id])
  if @message.user != current_user
    flash[:alert] = "Vous n'êtes pas autorisé !"
    redirect_to root_path

  end
end

def new
  @message = Message.new
end

def create
  @message = Message.new(message_params)
  @message.user = current_user
  if @message.save
  redirect_to messages_path
else
  render :new
  end
end

def edit
  @message = Message.find(params[:id])
  if @message.user != current_user
    flash[:alert] = "Vous n'êtes pas autorisé !"
    redirect_to root_path
  end
end

def update
  @message = Message.find(params[:id])
  if @message.update(message_params)
    redirect_to messages_path
  else
    render :edit
  end
end

def destroy
   @message = Message.find(params[:id])
   @message.destroy
   if @message.user != current_user
    flash[:alert] = "Vous n'êtes pas autorisé !"
    redirect_to root_path
  else
   redirect_to messages_path
  end
end




private

def message_params
  params.require(:message).permit(:createur_name, :createur_prenom, :createur_date_naissance,
    :createur_ville_naissance,  :createur_pays_naissance, :createur_rue, :createur_codepostal,
    :createur_ville, :createur_pays, :createur_mail, :createur_tel,

    :dest_nom, :dest_prenom, :dest_mail, :dest_tel, :dest_rue, :dest_codepostal, :dest_ville,
    :dest_pays,
    :dest_2_nom, :dest_2_prenom, :dest_2_mail, :dest_2_tel, :dest_2_rue, :dest_2_codepostal,
    :dest_2_ville, :dest_2_pays,
    :video)
  end
end







































