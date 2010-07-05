module Dragonfly
  module Encoding    

    autoload :RMagickEncoder,     'dragonfly/encoding/r_magick_encoder'
    autoload :TransparentEncoder, 'dragonfly/encoding/transparent_encoder'

    class Base

      include BelongsToApp
      include Delegatable

      def encode(*args)
        throw :unable_to_handle
      end

    end
  end
end