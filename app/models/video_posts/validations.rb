module VideoPosts::Validations
  extend ActiveSupport::Concern

  included do
    validates :provider,
              :video_uid,
              :title,
              presence: true
  end
end
