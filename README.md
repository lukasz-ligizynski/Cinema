How to set up the app:
  1. Clone repository
  2. set ruby to 3.1.0 version
  3. Bundle install
  4. Change file '.env.example' to '.env' and set envioremnt's passwords and usernames
  5. Make sure postgresql is working, I use postgreSQL 13
  6. rails db:create
  7. rails db:migrate
  8. You can check now if everything is working by "rails s".
  9. rails db:seed for basic data.
  10. Have fun with app :D 
