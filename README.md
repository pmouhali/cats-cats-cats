Voir le planning des tâches sur Trello :

https://trello.com/b/SwMUq60n/thp-pj1

HEROKU PIPELINE : 

	A partir de ce repo 'cats-cats-cats', deux apps heroku on été créees. Kiss-kiss-cats-cats pour la production, et kiss-kiss-cats-cats-dev pour le development stage. Le pipeline est connecté au repo.
	Mode d'emploi : push sur l'app -dev, et si foncitonnel, promote sur production via Heroku. 

DEV : 

Pour tester le user system : 

NEW USER = http://localhost:3000/users/sign_up

LOGIN = http://localhost:3000/users/sign_in

LOGOUT = https://localhost:3000/users/sign_out

DESTROY USER = https://localhost:3000/users/cancel

EDIT USER = https://localhost:3000/users/edit

NEW PASSWORD (for user) = https://localhost:3000/users/password/new

EDIT PASSWORD = https://localhost:3000/users/password/edit


