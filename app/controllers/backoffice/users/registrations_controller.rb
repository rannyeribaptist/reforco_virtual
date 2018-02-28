class Backoffice::Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  layout 'backoffice', :only => [:edit]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  def create
    super do |resource|
      payment = PagSeguro::PaymentRequest.new
      payment.reference = resource.id
      payment.notification_url = Rails.env.production? ? confirm_payment_url : 'http://reforco.rannyeri.ultrahook.com/payment'
      payment.redirect_url = root_url
      payment.extra_params << { senderEmail: resource.email }
      payment.items << {
        id: 1,
        description: 'Um ano de Reforço Virtual',
        amount: 165.00,
      }

      response = payment.register

      if response.errors.any?
        raise response.errors.join("\n")
      else
        resource.update_attributes(payment_link: response.url)
      end
    end
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :grade, :profile_attributes => []])
    end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profiles_attributes => [:avatar, :school, :responsible_name, :responsible_email, :responsible_phone, :id, :name, :grade, :user_id]])
  end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    puts resource.payment_link
    resource.payment_link
  end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    resource.payment_link
  end
end
