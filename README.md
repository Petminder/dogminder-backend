Link to deployed app: http://petminder.github.io/petminder-frontend/
Link to back end repo: https://github.com/Petminder/petminder-frontend

This app is for everyone who loves their dog and wants to provide the best care, which means keeping them up to date on vaccinations and monthly medicines.  I know I forget if I did it on the 2nd or the 12th or the 20th.  I wanted to provide a place where dog owners can keep track of their best friends health.

I built this app with a PostgreSQL database with a Rails back end and utilized a Bootstrap template and used Handlebars to render the page.  This was the first time I used Handlebars to render data.

In the future I would like the application to store important documents and be able to create a countdown to next medicine application or vaccination.

C-
As a User I want to be able to log in
As a User I want to be able to register
As a User I want to be able to add a dog

R-
As a User I want to be able to get a list of only my dogs

U-
As a User I want to be able to change any parameter of my dog (name, dob, last tick, last rabies, last heartworm)

D-
As a User I want to be able to remove a dog from my list :(
As a User I want to be able to remove some data from my dog


Stretch CRUD:
C-
As a User I want to be able to create a specific landing site for each dog
As a User I want to be able to upload important documents (like rabies vaccinations forms)

R-
As a User I want to be able to see when the next shot or medicine application should be done
As a User I want to be able to grant access rights to another person

U-
As a User I want to be able to update the profile picture
As a User I want to be able to make the profile picture the background image of the dog specific landing site

D-
As a User I want to be able to delete documents attached to the dog
# User authentication

## Register

```
curl --include --request POST --header "Content-Type: application/json" -d '{
  "credentials": {
    "email": "an@example.email",
    "password": "an example password",
    "password_confirmation": "an example password"
  }
}' http://localhost:3000/register
```

## Login

```
curl --request POST --header "Content-Type: application/json" -d '{
  "credentials": {
    "email": "an@example.email",
    "password": "an example password"
  }
}' http://localhost:3000/login
```

## Logout

```
curl --request DELETE --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/logout/1
```

# Users

## List

```
curl --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/users
```

# Books

## List

```
curl --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/books
```

**OR**

```
curl http://localhost:3000/pets
```

## Create

```
curl --request POST --header "Authorization: Token token=a3b6df7c46e27a6a880b276b0599dc59" --header "Content-Type: application/json" -d '{
  "pet": {
    "name":"Rupert",
  }
}'  http://localhost:3000/pets
```
