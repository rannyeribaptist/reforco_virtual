class Backoffice::PagseguroController < ApplicationController
  protect_from_forgery except: :confirm

  def confirm
    transaction = PagSeguro::Transaction.find_by_notification_code(params[:notificationCode])
    if transaction.errors.empty?
      @user = User.find(transaction.reference)

      if @user.nil?
        render json: nil, status: :unprocessable_entity
      end

      if transaction.status.id == "3"
        @user.update(paid: true)
      else
        @user.update(paid: false)
      end
    end

    render json: nil, status: :ok
  end
end
