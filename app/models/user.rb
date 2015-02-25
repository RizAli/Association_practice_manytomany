class Link

  include DataMapper::Resource

  property :id,     Serial
  property :title,  String

  has n, :tags, :through => Resource
  has n, :domain, :through => Resource

end

class Tag

  include DataMapper::Resource

  property :id,     Serial
  property :text,   Text

  has n, :links, :through => Resource

end

class Domain

  include DataMapper::Resource

  property :id,     Serial
  property :title,  String

  has n, :links, :through => Resource

end