module Dragonfly
  module Processing

    autoload :RMagickProcessor,     'dragonfly/processing/r_magick_processor'
    autoload :RMagickTextProcessor, 'dragonfly/processing/r_magick_text_processor'

    class Base

      include BelongsToApp
      include Delegatable

    end
  end
end