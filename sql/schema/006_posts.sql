-- +goose Up
CREATE TABLE
  posts (
    id UUID PRIMARY KEY,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    title Text NOT NULL,
    description Text,
    published_at TIMESTAMP NOT NULL,
    url Text NOT NULL UNIQUE,
    feed_id UUID NOT NULL REFERENCES feeds (id) ON DELETE CASCADE
  );

-- +goose Down
DROP TABLE posts;