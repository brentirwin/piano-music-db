CREATE TABLE piece (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  composer_id INT NOT NULL,   -- fk: composer.id
  title       TEXT NOT NULL,
  class_id    INT,            -- fk: class.id
  movement    INT,
  key         TEXT,
  rcm_grade   INT,
  rcm_list    CHAR(1),
  henle_grade INT,
  learned     INT,  -- bool
  memorized   INT,  -- bool
  wishlist    INT   -- bool
);

CREATE TABLE composer (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name  TEXT,
  last_name   TEXT NOT NULL,
  era_id      INT             -- fk: era.id
);

CREATE TABLE era (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name  TEXT NOT NULL
);

CREATE TABLE class (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  prefix  TEXT,
  work    INT,
  no      INT,
  coll_id INT                 -- fk: collection.id
);

CREATE TABLE collection (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name  TEXT NOT NULL
);

CREATE TABLE book (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title       TEXT NOT NULL,
  composer_id INT,            -- fk: composer.id 
  pub_id      INT,            -- fk: publisher.id
  own         INT -- bool
);

CREATE TABLE publisher (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name  TEXT NOT NULL
);

CREATE TABLE book_piece (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  b_id  INT NOT NULL,         -- fk: book.id
  p_id  INT NOT NULL          -- fk: piece.id
);
