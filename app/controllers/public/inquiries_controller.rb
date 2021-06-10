class Public::InquiriesController < ApplicationController
  def get
    @user = current_user
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    @user = current_user

    if @inquiry.save
      InquiryMailer.send_mail(@inquiry).deliver
      flash[:notice] = "問い合わせを受け付けました。後日メールにてご連絡します。"
      redirect_back(:fallback_location => {:action => "new"})
    else
      flash[:notice] = "記入漏れがあります。"
      render :get
    end
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :title, :content)
  end
end
