# -*- coding: utf-8 -*-
class User < ActiveRecord::Base
  # user認証
  # password 管理は本当にこれでいいのか?
  has_secure_password
  def user_params
    params.require(:password_digest).permit(:user_id, :password)
  end
end
