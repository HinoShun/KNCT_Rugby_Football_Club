# README

## アプリケーション名
KRFC


## アプリケーション概要（課題抽出と解決方法）
### 目的
既存のWebページをリニューアルし、部及び、OB・OGのコミュニケーション活性化を目的とする。  

### ペルソナ
20代〜40代の、部の近況に関心のあるOB・OG

### 課題と解決手法
1. 既存のWebページは静的サイトで年に1回だけ更新されるため、近況がわかりづらい  
  →記事投稿機能を実装し、画像と近況報告をいつでも簡単にできるようにした  
2. OB・OGは全国に点在しており、コミュニケーションを取る機会が少ない  
  →投稿された記事に対して、誰でもコメントができる機能を実装することで、コミュニケーションをとることが可能  
   コメントを見た現役在校生のモチベーションの向上も期待できる  
3. 毎年、部報を発行しているが、紙媒体で、管理されている住所へ郵送するため、住所の情報が古い会員の元に部報は届かない  
  →Webページからいつでも部報を閲覧できるように、PDFファイルの閲覧機能を実装した  
4. 住所情報を更新したくても、誰に連絡すればいいか、また連絡先がわからない  
   →Webサイト管理者に対してメールを送信する機能を実装した  
5. 部費の支払いは振り込み、手渡しの手段しかなく、援助しようとしても手間がかかる  
  →クレジットカードによる支払い機能を実装した  

## 工夫した点
1. 実際の運用を想定し、記事に対するコメントはユーザー登録しなくても可能にした  
2. 登録されるユーザーは管理者を想定し、管理者は記事の投稿、編集、削除、不適切なコメントの削除を可能にした  
3. PDFファイルは個人情報も含まれるため、個別でBasic認証を実装した  
4. 記事のもりあがり具合を示す、コメント数の表示機能を実装した  
5. タイトルのロゴは、デザイナーである友人に作成を依頼した  

## 努力した点（カリキュラム外で学習した点）
1. CSSはテンプレートを使用せず、自分でレイアウトを考えて実装した  
2. メール送信機能の実装方法を独学で実装した  
3. PDFファイルの閲覧機能を独学で実装した  

## URL
https://krfc.onrender.com


## テスト用アカウント等
●Basic認証　※Basic認証は一部ページのみ  
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
