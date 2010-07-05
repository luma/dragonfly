require 'dragonfly/core_ext/object'
require 'dragonfly/core_ext/string'
require 'dragonfly/core_ext/symbol'

module Dragonfly

  autoload :ActiveRecordExtensions, 'dragonfly/active_record_extensions'
  autoload :Analysis,               'dragonfly/analysis/base'
  autoload :AnalyserList,           'dragonfly/analyser_list'
  autoload :App,                    'dragonfly/app'
  autoload :BelongsToApp,           'dragonfly/belongs_to_app'
  autoload :Config,                 'dragonfly/config'
  autoload :Configurable,           'dragonfly/configurable'
  autoload :DataStorage,            'dragonfly/data_storage'
  autoload :Delegatable,            'dragonfly/delegatable'
  autoload :Delegator,              'dragonfly/delegator'
  autoload :Encoding,               'dragonfly/encoding/base'
  autoload :EncoderList,            'dragonfly/encoder_list'
  autoload :ExtendedTempObject,     'dragonfly/extended_temp_object'
  autoload :Middleware,             'dragonfly/middleware'
  autoload :Parameters,             'dragonfly/parameters'
  autoload :Processing,             'dragonfly/processing/base'
  autoload :ProcessorList,          'dragonfly/processor_list'
  autoload :Rails,                  'dragonfly/rails'
  autoload :TempObject,             'dragonfly/temp_object'
  autoload :UrlHandler,             'dragonfly/url_handler'

  class << self

    def const_missing(const)
      case const
      when :RMagickConfiguration
        puts "WARNING: RMagickConfiguration is deprecated and will be removed in future "+
             "versions of Dragonfly. Please change to Dragonfly::Config::RMagickImages"
        const_set(:RMagickConfiguration, Config::RMagickImages)
      else
        super
      end
    end

    def active_record_macro(prefix, app)
      already_extended = (class << ActiveRecord::Base; self; end).included_modules.include?(ActiveRecordExtensions)
      ActiveRecord::Base.extend(ActiveRecordExtensions) unless already_extended
      ActiveRecord::Base.register_dragonfly_app(prefix, app)
    end

  end
end
