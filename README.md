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
