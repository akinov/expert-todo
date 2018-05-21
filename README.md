# ExpertTodo
[Rails中級者向け勉強会Step-to-Rails-Expert.rb](https://step-to-rails-expert-rb.connpass.com/)のtodoアプリを作成しレビューしあう企画の元リポジトリです。
企画についての詳しい説明は、[説明ページ](http://biibiebisuke.hatenablog.com/entry/2017/08/08/173906)をご覧ください。

## アプリ名について
ExpertTodoという名前を使用すると環境にHerokuを使う場合など、アプリ名をurlに使う場合重複してしまい使用できない可能性があるので、任意のアプリ名を考えるか、`${account_name}-expert-todo`のアプリ名としてください。

## 開発の流れ
### 初めての方
- 本リポジトリをforkする
- 初回はmasterブランチにてrails newを行いcommit
- その後、reviewブランチを切ってそこで作業（reviewブランチから任意でブランチを切っても良い）
- レビューはreviewブランチにあるソースに対して行われる

### 途中参加の方
- 他の参加者のアプリをforkしてから実装してもOK

## ルール
- GitHub上でコードを公開する
- 常に動作確認できる環境を作る
  - 他の人が簡単に動作確認できるようにするため
  - Heroku, AWS, ...etc
- 開発環境の構築手順を README に書く
  - 基本は bin/setup で構築できるようにする
- CI環境の構築
  - テストの量は自由
  - 使用するCIサービスは自由
- コミットメッセージの日本語、英語はどちらでも可
- UIに関しては、各々の裁量に任せる（ただし、使う上でソースを読まないと使えないものはダメ）
- データの整合性（既存データの保存を保証する）は任意。

## 仕様
### 最小機能（初期機能）
- ユーザー認証ができる（email認証）
- タスクを登録、更新、削除できる
- タスクに期限日・説明を設定できる

## 環境構築方法
bin/setup

## アプリURL
https://akinov-expert-todo.herokuapp.com/
