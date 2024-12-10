ActiveAdmin.register Send do
  controller do 
    def create 
      @user=Send.new(send_params)
      # sfadsf[]
      if @user.save 
        MessageMailer.with(user: @user).send_email.deliver_now
        redirect_to admin_sends_path,{notice: "Message send succesfully"}
      else 
        redirect_to admin_sends_path,{notice: "Not sent"}
        
      end        
    end

    private 
    
     def send_params
      params.require(:send).permit(:username,:body)
     end

    
    end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :username, :body
  #
  # or
  #
  # permit_params do
  #   permitted = [:username, :body]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
