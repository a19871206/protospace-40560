# README
# ProtoSpaceのER図

## users テーブル

| Column             | Type   | Options                       |
| ------------------ | ------ | ----------------------------- |
| email              | string | not null: false ,unique: true |
| encrypted_password | string | not null: false               |
| name               | string | not null: false,              |
| profile            | text   | not null: false,              |
| occupation         | text   | not null: false,              |
| position           | text   | not null: false,              |

## comments テーブル

| Column    | Type       | Options                            |
| --------- | ---------- | ---------------------------------- |
| content   | text       | not null: false                    |
| prototype | references | not null: false, foreign_key: true |
| user      | references | not null: false, foreign_key: true |

## prototypes テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| catch_copy | text       | null: false                    |
| concept    | text       | null: false                    |
| user       | references | null: false, foreign_key: true |
