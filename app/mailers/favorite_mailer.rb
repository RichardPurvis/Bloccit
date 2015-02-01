class FavoriteMailer < ActionMailer::Base
  default from: "steelthunderfalcon@gmail.com"

    def new_comment(user, post, comment)

      # New Headers
      headers["Message-ID"] = "<comments/#{comment.id}@bloccit-app.com>"
      headers["In-Reply-To"] = "<post/#{post.id}@bloccit-app.com>"
      headers["References"] = "<post/#{post.id}@bloccit-app.com>"

      @user = user
      @post = post
      @comment = comment

      mail(to: user.email, subject: "New comment on #{post.title}")
    end

end
