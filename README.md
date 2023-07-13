# README

## usersテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| email   | string | null: false, unique: true |
| encrypted_password  | string | null: false |
| name| string | null: false |
| profile | text | null: false |
| occupation | text | null: false |
| position | text | null: false |

### Association
has_many :comments
has_many :prototypes

## commentsテーブル
| content | text | null: false |
| prototype | references | null: false, foreign_key: true |
| user | references | null: false, foreign_key: true |

### Association
belongs_to :users
belongs_to :prototypes

## prototypesテーブル
| title | string | null: false |
| catch_copy | text | null: false |
| concept | text | null: false |
| user | references | null: false, foreign_key: true |

### Association
belongs_to :users
has_many :comments

