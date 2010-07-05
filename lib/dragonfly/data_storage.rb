module Dragonfly
  module DataStorage

    autoload :Base,                 'dragonfly/data_storage/base'
    autoload :Base64DataStore,      'dragonfly/data_storage/base64_data_store'
    autoload :FileDataStore,        'dragonfly/data_storage/file_data_store'
    autoload :S3DataStore,          'dragonfly/data_storage/s3data_store'
    autoload :TransparentDataStore, 'dragonfly/data_storage/transparent_data_store'

    # Exceptions
    class DataNotFound < StandardError; end
    class UnableToStore < StandardError; end

  end
end
