class RuweiMailer < ApplicationMailer

  def awaken_email(ruwei)
    @ruwei = ruwei
    @url = "https://5xruby.tw/"
    @fb = "https://www.facebook.com/5xruby/"
    mail(from: '5xRuby <hi@5xruby.tw>', to: @ruwei.email, subject: "五倍紅寶石- 溫拿覺醒")
  end
end
