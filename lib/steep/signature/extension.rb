module Steep
  module Signature
    class Extension
      # @implements Steep__Signature__Extension

      def initialize(module_name:, extension_name:, members:)
        @module_name = module_name
        @extension_name = extension_name
        @members = members
      end

      def module_name; @module_name; end
      def extension_name; @extension_name; end
      def members; @members; end

      def ==(other)
        # @type var other_: Steep__Signature__Extension
        other_ = other
        other.is_a?(self.class) &&
          other_.module_name == module_name &&
          other_.extension_name == extension_name &&
          other_.members == members
      end
    end
  end
end
