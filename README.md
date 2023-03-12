# README

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ |------------ |
| email              | string | null: false |
| encrypted_password | string | null: false |
| name               | string | null: false |


### Association

- has_many :articles

## articles テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| title   | string     | null: false                    |
| content | text       | null: false                    |
| user    | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## comments テーブル

| Column           | Type                   | Options                        |
| ---------------- | ---------------------- | ------------------------------ |
| graduating_class | integer                |                                |
| name             | string                 | null: false                    |
| message          | text                   | null: false                    |
| article          | references null: false | null: false, foreign_key: true |


### Association

- belongs_to :article
