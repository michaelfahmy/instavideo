class VideoPost < ApplicationRecord
  include VideoPosts::Associations
  include VideoPosts::Validations
end
