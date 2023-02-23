#テーブル設計

## user テーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | -----------------------  |
| nickname           | string | null: false              |
| email              | string | null: false unique: true |
| encrypted_password | string | null: false              |


### Association

- has_many   :collections
- has_many   :orders
- has_many   :favorites
- has_many   :comments
- has_one    :profile


## profiles テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| age                | string     | null: false                    |
| gender_id          | integer    | null: false                    |
| profile            | text       | null: false                    |
| user               | references | null: false, foreign_key: true |


### Association

- belongs_to :user


## collections テーブル

| Column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| title                | string     | null: false                    |
| point                | text       | null: false                    |
| content              | text       | null: false                    |
| category_id          | integer    | null: false                    |
| user                 | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- has_one    :order
- has_many   :favorites
- has_many   :comments


## orders テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| item               | references | null: false, foreign_key: true |
| user               | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :collection
- has_one    :address


# addresses テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| first_name         | string     | null: false                    | 
| last_name          | string     | null: false                    |
| first_name_kana    | string     | null: false                    |
| last_name_kana     | string     | null: false                    | 
| post_number        | string     | null: false                    |
| prefecture_id      | integer    | null: false                    |
| municipalities     | string     | null: false                    |
| address            | string     | null: false                    |
| building_name      | string     |                                |
| telephone_number   | string     | null: false                    |
| order              | references | null: false, foreign_key: true |

### Association

- belongs_to  :order