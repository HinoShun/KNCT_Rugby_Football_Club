# README


## アプリケーション名
KRFC


## アプリケーション概要
・ユーザーが、記事（部の近況）を投稿したり閲覧者がコメントしたりすることで、コミュニケーションとることができる
・閲覧者は、部の近況を確認できる


## URL
(https://krfc.onrender.com)


## テスト用アカウント等
●Basic認証　※Basic認証は一部ページのみです
    ・パスワード: 0000
    ・ID: 0000　

●ユーザー情報
    ・ユーザー名    : master
    ・メールアドレス : master@KRFC.com
    ・パスワード    : master00

 ●クレジットカード情報
    ・カード番号: 4242 4242 4242 4242
    ・期限: 12/23（未来の 月 / 年 ）
    ・CVC: 123


## 利用方法
### 記事投稿
1.トップページヘッダーからテストアカウント：master　でログイン
　（メールアドレス : master@KRFC.com　　パスワード: master00）
2.トップページ右上より、「記事投稿」をクリック
3.必要事項入力後、「投稿する」をクリック

### 会員限定ページの閲覧
1.TOPページまたは、会員メニューページより、「部報リンク」をクリック
　（パスワード: 0000　　ID: 0000）
2.見たいファイルをクリック

### 部費のクレジットカード支払い
1.TOPページまたは、会員メニューページより、「部費のお支払い」をクリック
2.必要事項入力後、「お支払い」をクリック
　（カード番号: 4242 4242 4242 4242　　期限: 12/23（未来の 月 / 年 ）　　CVC: 123）

### 管理者へメール
1.TOPページmenuバーより「管理者へメール」をクリック
2.必要事項入力後、「送信する」をクリック


## アプリケーションを作成した背景
既存のWebページをリニューアルするつもりで作成。
部の近況報告と、コメントする機能を実装することで、部の活性化を目的とする。
部報閲覧を可能とし、OB・OGのコミュニケーションを活性化する。
クレジットカードで部費の支払いを可能とすることで、OB・OGによる部への支援を行いやすくする。


##　実装した機能について
・記事投稿機能
・記事投稿時の画像プレビュー表示機能
・コメント機能
・コメント数のカウント機能
・一部ページのBasic認証機能
・PDFファイル表示機能
・クレジットカード決済機能
・メール送信機能


## テーブル設計

### users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ |------------ |
| email              | string | null: false |
| encrypted_password | string | null: false |
| name               | string | null: false |


#### Association

- has_many :articles

### articles テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| title   | string     | null: false                    |
| content | text       | null: false                    |
| user    | references | null: false, foreign_key: true |

#### Association

- belongs_to :user

### comments テーブル

| Column           | Type                   | Options                        |
| ---------------- | ---------------------- | ------------------------------ |
| graduating_class | integer                |                                |
| name             | string                 | null: false                    |
| message          | text                   | null: false                    |
| article          | references null: false | null: false, foreign_key: true |


#### Association

- belongs_to :article


### contacts テーブル

| Column  | Type    | Options     |
| ------- | --------| ----------- |
| name    | string  | null: false |
| email   | string  | null: false |
| content | text    | null: false |


### orders テーブル

| Column | Type    | Options     |
| ------ | --------| ----------- |
| name   | string  | null: false |
| price  | integer | null: false |
| email  | string  | null: false |
