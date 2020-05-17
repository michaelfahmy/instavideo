FactoryBot.define do
  factory :video_post do
    user { nil }
    provider { 'youtube' }
    video_uid { 'MyString' }
    title { 'MyString' }
    description { 'MyText' }
    channel_title { 'MyString' }
    default_audio_language { 'en' }
    published_at { '2020-05-14 22:33:37' }
    tags { 'MyString' }
    thumbnails { '' }
  end
end
