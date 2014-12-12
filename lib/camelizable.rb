require "camelizable/version"

module Camelizable
  def ucc(sep=/[^[:alnum:]]+/)
    split(sep).map(&:capitalize).join
  end

  def lcc(sep=/[^[:alnum:]]+/)
    ucc(sep).sub(/./){ $&.downcase }
  end
end

class String
  include Camelizable
end
