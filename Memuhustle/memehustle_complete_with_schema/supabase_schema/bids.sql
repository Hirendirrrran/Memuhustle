CREATE TABLE bids (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  meme_id UUID REFERENCES memes(id) ON DELETE CASCADE,
  user_id TEXT,
  credits INTEGER NOT NULL,
  created_at TIMESTAMP DEFAULT now()
);

CREATE INDEX idx_bids_meme_id ON bids (meme_id);