require "privately_delegate/version"
require "active_support/core_ext/module/delegation"

class Module
  def privately_delegate(*methods, to: nil, prefix: nil, allow_nil: nil)
    private(*delegate(*methods, to: to, prefix: prefix, allow_nil: allow_nil))
  end
end
