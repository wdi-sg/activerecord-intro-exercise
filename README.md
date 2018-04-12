# Tunr 1.0!

## Local Setup

Create your `schema.sql`:
```
DROP TABLE IF EXISTS songs;
DROP TABLE IF EXISTS artists;

CREATE TABLE artists(
  id SERIAL PRIMARY KEY,
  name TEXT,
  photo_url TEXT,
  nationality TEXT
);

CREATE TABLE songs(
  id SERIAL PRIMARY KEY,
  title TEXT,
  album TEXT,
  preview_url TEXT,
  artist_id INT
);
```

```bash
bundle install
createdb tunr_db
psql -d tunr_db < schema.sql
psql -d tunr_db < seeds.sql
```

Create your artist class:
```
class Artist < ActiveRecord::Base
  # AR classes are singular and capitalized by convention
end
```

## Part 1.1 - Use your Artist Model

In the console:

1. Find all artists
2. Find just one artist by id
3. Find Taylor Swift (or your other fav artist) by **name**.
4. Find all artists from the USA
5. Find all artists NOT from the USA
6. Create a new artist for your favorite artist
7. Change at least 2 of their attributes
8. Destroy the artist you just created
  - (NOTE: If you destroy other artists at this point, you'll need to reseed your data for consistency.)

### further

Add another column to your `artists` table called `year` with type integer by editing your `db/schema.sql`
file. Then run reset your schema via the command line. Populate each artist with the appropriate year of origin.

### further

Use [Active Record queries](http://guides.rubyonrails.org/active_record_querying.html#conditions) to find all artists:
- since 2000
- between 1970 and 1995
- not in 2004 or 2015


## Part 1.2 - Create your Song Model / Setup Associations

1. Create a file that will contain your AR class definition for Songs
2. Make sure to link that file in your main application file
3. Add corresponding associations to your models

## Part 1.3 - Use your Model Associations

In byebug (via the console)...

1. Find the artist with the name Enya
2. Use AR methods to find all of Enya's songs, store them in a variable
3. Get the first song out of those results and get that song's title
4. Find the song with the title 'Unstoppable' and store in a variable
5. Get that song's artist, store that in a variable
6. Reassign the song's artist to be a different one (your choice)
7. Save that song
8. Create a new song, and associate it with a different artist of your choice
9. Delete that song
10. Find all of Enya's songs again, store in a variable
  - Using `each`, iterate over those songs and for each song, print "I like" + the song name
