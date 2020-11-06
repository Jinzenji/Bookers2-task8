class ThanksMailer < ActionMailer::Base
  default from: "hogehoge@example.com"

  def thanks_mail(user)
    @user = user
    mail(subject: "会員登録が完了しました。", to: @user.email ) do |format|
      format.text
    end
  end
end
