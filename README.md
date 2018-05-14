# Ticketing
Ticketing App for interviewing

# Background

We've created a simple rails application in order to encourage canditates to try to debug fixed and even refactor part of the apps, the efforts and ideas taken from interviews might help us improve the app and make it evolve so coding challenges get more and more complex and meaningful for the team, for now just the sustaining team but maybe we can work along with other teams that want to use it in order to hire core development candidates.

# Rules 
The app is meant to be buggy and with failures and **not perfect**, so for that reason it would be better to add reviews or ideas about how to fix it or report bugs instead of create a PR for fixing it.  That way we can use that information to create code chanllenges for the interview.

# Future

We might need to build a single page application with any js framwork and refactor part of the app to create an API serving that app which might be useful for other teams that want to test backend and frontend developers skills.

# How to use it

You can set mysql url env variable in case you dont have mysql default settings. 

`export MYSQL_URL=mysql://<username>@<host>:<port>/ticketing_development` 

Basically just clone the repo and start the rails server.
`./script/bootstrap`
