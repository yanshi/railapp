class Notifier < ActionMailer::Base
  default from: "from@example.com"
  def newsletter(user, newsletter)
    recipients user.email
    from       "PROMISING <system@promising.net>"
    subject newsletter.subject
    body :body => newsletter.body, :user => user
  end
end
