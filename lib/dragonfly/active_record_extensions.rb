module Dragonfly

  module ActiveRecordExtensions

    autoload :Attachment,     'dragonfly/active_record_extensions/attachment'
    autoload :ClassMethods,   'dragonfly/active_record_extensions/class_methods'
    autoload :InstanceMethods,'dragonfly/active_record_extensions/instance_methods'
    autoload :Validations,    'dragonfly/active_record_extensions/validations'

    def self.extended(klass)
      unless klass.include?(InstanceMethods)
        klass.extend(ClassMethods)
        klass.class_eval{ include InstanceMethods }
      end
    end

  end
end