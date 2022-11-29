# Move to movie

## Context

This project was realized in 30h for a school Hackathon. We were given only one word to work around: "travel".

## Description

Have you ever dreamed of visiting the most beautiful filming locations from your favourite movies? Well now, thanks to Move to Movie, it is possible!

On the homepage, click on a movie poster and discover which destination awaits you.

We used mostly PHP (POO + MVC architecture), Twig, MySQL and a payment API.

## The Team (aka "Four in the Morning")

We found the team name at approximately 4:00am, after about 20h of coding, and at that point our creativity was not very high... ;)

We were a fellowship of five joyful developers:
- Naomie Atil
- Alexis Boucherie
- Andy Ricaña
- Anthony Marché
- Tolotra Ramarovahoaka

## How to install the project locally?

1. Clone the repo from Github.
2. Run `composer install`.
3. Create _config/db.php_ from _config/db.php.dist_ file and add your DB parameters. Don't delete the _.dist_ file, it must be kept.

```php
define('APP_DB_HOST', 'your_db_host');
define('APP_DB_NAME', 'your_db_name');
define('APP_DB_USER', 'your_db_user');
define('APP_DB_PASSWORD', 'your_db_password');
```

4. Import _database.sql_ in your SQL server, you can do it manually or use the _migration.php_ script which will import a _database.sql_ file.
5. Run the internal PHP webserver with `php -S localhost:8000 -t public/`. The option `-t` with `public` as parameter means your localhost will target the `/public` folder.
6. Go to `localhost:8000` with your favorite browser.
