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



-------------------

GET /api/v1/moods
GET /api/v1/users
GET /api/v1/affirmations
GET /api/v1/meditations

POST api/v1/moods
POST api/v1/users
POST api/v1/affirmations
POST api/v1/meditations

DELETE api/v1/meditations/:id
DELETE api/v1/affirmations/:id
