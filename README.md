# ホテルの予約システム
一般的なアカウント登録とログイン機能・予約機能を搭載したWebアプリケーションです。

## 機能
・ログインページから新規登録可能で、未登録の場合はログイン不可  
・新規登録後、ログインすると予約ページに自動遷移  
・予約ページでは、名前、日付、部屋のタイプ(シングル、ツイン、ダブル)、プラン(エコノミー、ノーマル、スペシャル)の選択が可能  
・予約ボタンを押すとホテルのホームページに遷移し、カレンダーの予約した日付に予約者名とプランが表示  
・重複予約や入力ミスがあるとエラーが発生  
・ホームページ右上にはログイン中のユーザーの名前が表示

## スクリーンショット
<img src="https://github.com/pngdr/hotel-reservation-system/assets/107669748/fa576fd5-f287-4324-b820-212511b07a08" width="900px">
<img src="https://github.com/pngdr/hotel-reservation-system/assets/107669748/a52498d9-1fcc-4619-8f22-3bbd5b9c93ee" width="900px">
<img src="https://github.com/pngdr/hotel-reservation-system/assets/107669748/773398ea-ecf4-4dd8-abd0-2042b9974895" width="900px">  

## 動作環境
・Ruby 3.2.2  
・SQLite3  

## 環境構築手順
1. Rubyのインストール
   [RubyInstaller](https://rubyinstaller.org/downloads/)にアクセスして「=> Ruby+Devkit 3.0.4-1 (x64)」という文字をクリックするとダウンロードがはじまります。

2. SQLite3のインストール
   [SQLite3Installer](https://sqlite.org/index.html)にアクセスして「Precompiled Binaries for Windows」「Precompiled Binaries for Windows」をダウンロードし、ダウンロードしたフォルダの中にある「sqlite3.dll」「sqlite3.exe」を「C:¥Ruby32-x64¥bin」にコピーします。

3. Ruby on Railsのインストール
   コマンドプロンプトで「gem install rails -v 7.0.3」のコマンドを実行します。

4. ローカルでRailsサーバーを立てる
   「hotel-reservation-system」ディレクトリまで移動し、「rails s」のコマンドでRailsサーバーを立ち上げます。

5. サーバーにアクセスする
   「localhost:3000/login」のURLをブラウザで開きます。
