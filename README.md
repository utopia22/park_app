# LittlePark
![root2](https://user-images.githubusercontent.com/50666202/91636926-77162280-ea3f-11ea-8a18-bba5f33b3dd8.jpeg)

【URL】
https://little-park.herokuapp.com  
【github】
https://github.com/utopia22/park_app

## 使い方
- 文字、地図、条件タグで、好きな公園を検索出来ます。
- 公園の詳細の閲覧や、「いいね」、「ログイン」などを利用したい場合は、新規登録をしてログインします。（※ゲストログイン（閲覧用）でログインできます。）
- 本ポートフォリオは、スマートフォンからもご覧いただけます。  

## 概要と差別化要素
- いつでも気軽に徒歩でふらっと子どもを連れて遊びに行ける公園検索アプリ。  
- 既存の大手公園検索アプリでは紹介されていそうな大型の有名公園ではなく、もっと身近で、規模の小さいご近所の気軽な公園を紹介。  
- 「地域密着」「コミュニケーション」「自己重要感」  

## アピールポイントと苦労した点

* 「気になるけど検索してもあまり出て来ない」。近所に無数にある小さな公園の詳細を、ユーザー同士の口コミを通して情報を共有し、楽しむローカルなプラットホームアプリとして作りました。
* ゲストログイン（閲覧用）
  * たまたま検索して通りかかった一般ユーザーでも気軽に使用できるように設置しました。
* テキスト検索窓、地図検索、条件(ハッシュタグ)検索
  * 多角的に公園を検索出来ます。
  * root画面での各設置場所(レイアウト)に試行錯誤しましたが、地図検索と条件(ハッシュタグ)検索をモダールに押し込む事で解決しました。
* ハッシュタグによる条件検索
  * チェックボックス 等を用いた従来の検索方法よりも、多くのwebユーザーにとってtwitterやInstagramが生活の一部になっている昨今では、馴染みやすいと思いました。
  * 「ハッシュタグ」の作り方が調べてもどうしても解らず、acts-as-taggable-onというタグ機能のgemをスペース分にして、「#」を頭に付けてハッシュタグに似せる形にしました。
* いいね機能
  * 食べログの五つ星の評価の役割。いいね機能の方が客観的評価がわかり易く、気軽に参加しやすいと思いました。
  * いいねを押す度にリロードが気になったので、Ajaxについて調べながら試行錯誤して動作を切り替えました。
* コメント機能
  * 基本、google検索では詳細が分かりにくい小規模な公園をサンプルにしているのでユーザーのレビューも重要な情報の一部となること、公園を通したユーザー同志のコミュニケーションと小さな交流を期待して設置しました。
* user、postテーブルの「いいね」「レビュー」一覧
  * それぞれのユーザーがどんな公園に関心を持っているか一眼でわかるように設置しました。
  * ログインと非ログインの線引き、どこまで出来る様にするか悩みましたが、閲覧は非ログインでも自由にしました。基本的に閲覧のみのユーザーが圧倒的に多いと思ったからです。
* レスポンシブ対応
  * このジャンルのアプリはPCよりスマホで閲覧するユーザーが多いと思ったので、Bootstrapのグリッドシステムでスマホ画面のサイズにも対応しました。
* ページネーション
  * postデータが多くなった時の事を想定して、1ページ毎の投稿数を限定しました。

## 使用技術

- Ruby 2.6.5  
- Rails 6.0.3.2  
- HTML, Sass, javascript, jQuery  

## 機能一覧

- ユーザー登録  
- ログイン機能  
- 投稿機能（画像のアップロードにCarrierWaveを使用）  
- 投稿一覧・投稿詳細表示機能  
- 投稿管理機能  
- いいね機能（Ajax）  
- コメント機能（Ajax）  
- 検索機能（jQuery）  
- タグ付け機能、タグ検索機能(acts-as-taggable-on使用)  

## 制作者

  関真也（Seki Shinya）
