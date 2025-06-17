CREATE TABLE memes (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  title TEXT NOT NULL,
  image_url TEXT NOT NULL,
  tags TEXT[],
  upvotes INTEGER DEFAULT 0,
  caption TEXT,
  vibe TEXT,
  owner_id TEXT,
  created_at TIMESTAMP DEFAULT now()
);

CREATE INDEX idx_memes_upvotes ON memes (upvotes DESC);
CREATE INDEX idx_memes_tags ON memes USING GIN (tags);