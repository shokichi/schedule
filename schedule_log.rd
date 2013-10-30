=begin
= 作業ログ
== 環境
 $ uname -a 
 Linux ishioka-virtual-machine 3.2.0-54-generic-pae #82-Ubuntu SMP Tue Sep 10 20:29:22 UTC 2013 i686 i686 i386 GNU/Linux

 $ ruby -v 
 ruby 1.9.3p327 (2012-11-10 revision 37606) [i686-linux]

 $ rails -v 
 Rails 4.0.0

== 作成
アプリケーションを作成
 $ rails new schedule

== Git
Gitで管理をおこなう

 $ cd schedule
 $ git init

 $ git add .
 $ git commit -m "First commit"

GitHubにレポジトリを作成したあと, 以下のコマンドを実行 
 $ git remote add origin https://github.com/shokichi/schedule.git
 $ git push -u origin master

== scaffold(足場)の作成
 $ rails generate scaffold Event title:string description:text date:date time:datetime

作ったもの
* title
* description
* date
* datetime

やり直すときは以下のオプションを付ける
 --force

削除したいときは以下のコマンドを実行
 $ rails destroy scaffold Event

== マイグレーション
 $ rake db:migrate

== Rails サーバーを起動
 $ rails s 
http://0.0.0.0:3000/events にアクセス

== パスワード管理
=== gemのインストール
Gemfileでbrrypt-rubyをコメントイン
 gem 'bcrypt-ruby','~> 3.0.0'

 $ bundle

=== モデル作成
 $ rails generate model user user_id:string password_digest:string

* モデル編集
 class User < ActiveRecord::Base
   has_secure_password
   def user_params
     params.require(:password_digest).permit(:user_id, :password)
   end
 end


=== 参考ページ
* ((<bcrypt-rubyをRailsで使う|URL:http://bakunyo.hatenablog.com/entry/2013/05/26/bcrypt-ruby%E3%82%92Rails%E3%81%A7%E4%BD%BF%E3%81%86>))
=end

