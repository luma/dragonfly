module Dragonfly
  module Analysis

    autoload :FileCommandAnalyser, 'dragonfly/analysis/file_command_analyser'
    autoload :RMagickAnalyser,     'dragonfly/analysis/r_magick_analyser'

    class Base

      include BelongsToApp
      include Delegatable

    end
  end
end