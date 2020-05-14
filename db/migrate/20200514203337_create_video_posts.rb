class CreateVideoPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :video_posts do |t|
      t.references :user, null: false
      t.string :provider, null: false
      t.string :video_uid, null: false
      t.string :title
      t.text :description
      t.string :channel_title
      t.string :default_audio_language
      t.datetime :published_at
      t.string :tags, array: true, default: []
      t.jsonb :thumbnails, null: false, default: '{}'

      t.timestamps
    end

    add_index :video_posts, %i[provider video_uid], unique: true
  end
end
