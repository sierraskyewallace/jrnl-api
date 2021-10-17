WellSelf - A mental wellness app that tracks moods, affirmations and meditation sessions.

User - 

has_many :affirmations, :moods, :meditation_logs
DEVISE

Moods - 

belongs_to :user
name:string
user_id:integer
description:text

Affirmations - 

belongs_to :user
name:string
user_id:integer


Meditation - 

belongs_to :user
name:string
user_id:integer
description:text
CREATED AT or datetime ? ****** 
