#config/initilizers/paperclip.rb
require 'paperclip/media_type_spoof_detector'
module Paperclip
  class MediaTypeSpoofDetector
    def spoofed?
      false
    end
  end
end

Paperclip::Attachment.default_options[:s3_host_name] = 's3-us-east-2.amazonaws.com'