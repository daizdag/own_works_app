# アプリケーション名
クリコレ！

# アプリケーション概要
自身の創作物を投稿し、ユーザー同士でコミュニケーションをとることで趣味を共有したり応援したりする事ができる。

# URL
https://own-works.onrender.com
# テスト用アカウント
・ベーシック認証ID：admin<br>
・ベーシック認証PASS：2222<br>
・ログイン用メールアドレス: test@com<br>
・ログイン用パスワード: 111aaa
# 利用方法
## 創作物投稿
1.トップページ(一覧ページ)のヘッダーからテスト用アカウントでログインを行う<br>
2.新規投稿ボタンから、創作物の投稿(タイトル・ポイント・説明文・カテゴリ・画像)を入力し投稿する
## 他者の作品を応援する
1.一覧ページから創作物をクリックして、創作物の詳細を確認する<br>
2.応援したい創作物があれば、ユーザーのフォロー・お気に入り・コメントメッセージを送るなどを行う

## 他者を応援する
1.一覧ページから創作物をクリックして、創作物の詳細を確認する<br>
2.創作物詳細ページから応援したいユーザーのユーザー名をクリックする<br>
3.ユーザー詳細画面の寄付ボタンから寄付金額・応援メッセージを入力し寄付を行う

# アプリケーションを作成した背景
近年YouTubeやTwitterなどの自分の趣味や特技を公開する場面が増えた中で<br>
 ・動画投稿よりも簡単に自分のハンドメイドの趣味を公開したい。<br>
 ・日常のつぶやきをしない事でより趣味を共有したい。<br>
 と考え画像専用のハンドメイド作品公開サイトを作りたいと考えました。

# 洗い出した要件

[要件定義シートへ](https://docs.google.com/spreadsheets/d/1RPlw3wkrM8EnDjOXHErvaWsXLhhz1fW55DysEeDEYRk/edit#gid=982722306)


# 実装した機能についての画像やGIF及びその説明
・トップページ<br>
<a href="https://gyazo.com/ed74de54ed075a4e05f6a92d3237ee41"><img src="https://i.gyazo.com/ed74de54ed075a4e05f6a92d3237ee41.gif" alt="Image from Gyazo" width="1000"/></a><br><br>

・作品詳細ページ<br>
<a href="https://gyazo.com/1759bf0a5444b2651adcfe8c03615f77"><img src="https://i.gyazo.com/1759bf0a5444b2651adcfe8c03615f77.gif" alt="Image from Gyazo" width="1000"/></a><br><br>

・マイページ<br>
<a href="https://gyazo.com/f474351e238f8299ee9785c190add5b0"><img src="https://i.gyazo.com/f474351e238f8299ee9785c190add5b0.png" alt="Image from Gyazo" width="1337"/></a>


# 実装予定の機能
・フォロー機能<br>
・他者応援機能(寄付機能)<br>
・お気に入り機能<br>
・カテゴリー別検索機能<br>

# データベース設計
<a href="https://gyazo.com/f8d4e7399e9a9f13c39ff174df2026f6"><img src="https://i.gyazo.com/f8d4e7399e9a9f13c39ff174df2026f6.png" alt="Image from Gyazo" width="736"/></a>

# 画面遷移図
<a href="https://gyazo.com/1f9ed565a70716a8c00486597fc8a94d"><img src="https://i.gyazo.com/1f9ed565a70716a8c00486597fc8a94d.png" alt="Image from Gyazo" width="819"/></a>

# 開発環境
・フロントエンド<br>
・バックエンド<br>
・インフラ<br>
・テキストエディタ<br>
・タスク管理<br>

# ローカルでの動作環境
以下のコマンドを順に実行。<br>
% cd ダウンロード先のファイル名<br>
% git clone https://github.com/daizdag/own_works_app.git<br>
% own_works_app<br>
% bundle install<br>
% yarn install

# 工夫したポイント
・出来るだけ操作がわかるようにそれぞれの項目を大きくシンプルに表示させるように工夫しました。<br>
・ユーザーマイページに遷移する際、ユーザーネームをクリックしJavaScriptでリストボタンを表示させそのリストボタンをクリックすると画面遷移が出来る事<br>
<a href="https://gyazo.com/202b3b5d4b41032caad0ae85862042f7"><img src="https://i.gyazo.com/202b3b5d4b41032caad0ae85862042f7.gif" alt="Image from Gyazo" width="1000"/></a>