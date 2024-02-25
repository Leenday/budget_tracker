class Web::SessionsController < Web::ApplicationController
  def new
    @session = SessionForm.new
  end

  def create
    @session = SessionForm.new(session_params)

    if @session.valid?
      sign_in @session.user

      puts 'IT WAS REDIRECTED!'
      redirect_to controller: :incomes, action: :index
    else
      render :new
    end
  end

  def session_params
    params.require(:session_form).permit(:login, :password)
  end
end
