class RuweiMailer < ApplicationMailer

  def awaken_email(ruwei)
    @ruwei = ruwei
    @url = "https://5xruby.tw/"
    @fb = "https://www.facebook.com/5xruby/"
    mail(to: @ruwei.email, subject: "五倍紅寶石- 魯味覺醒")
  end
end
