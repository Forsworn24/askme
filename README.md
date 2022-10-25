# Askme

## Description

This application is an incomplete copy of the [askfm](https://ask.fm/) application. The application supports user registration, changing the profile view, uploading avatars, recaptcha, the ability to ask each other anonymous and named questions.

You can learn more about the possibilities of a working application in practice at the following link:

[askme-forsworn](https://askme-forsworn24.herokuapp.com/)

## Application functionality

### You need the following extensions to run the application
```
Ruby version: 3.0.0
```
```
Rails version: 7.0.3.1
```

**Possible functionality that you can implement**

- Google Recaptcha

In the application, you can implement spam protection. 
You can do it like this:

1. Read the Google Recaptcha connection guide in detail ([link](https://developers.google.com/recaptcha/docs/display))
2. Add a key to your credentials

Example:

```
cd config/credentials.yml.enc
EDITOR=vi rails credentials:edit 
```

```
secret_key_base: <your_api_key>
```

- Gravtar

1. Read the Gravatar connection guide in detail ([link](https://github.com/chrislloyd/gravtastic))
2. Add a key to your credentials

Example:

```
cd config/credentials.yml.enc
EDITOR=vi rails credentials:edit 
```

```
recaptcha:
  site_key: <your_site_key>
  secret_key: <your_secret_key>
```

### Launching guide

- Presets

1. Clone the repository and navigate to the project folder
2. Install the required gems

```
bundle install
```

3. Create a database, run migrations

```
bundle exec rails db:create
```
```
bundle exec rails db:migrate
```

4. Run a local server to test the application
```
bundle exec rails s
```
