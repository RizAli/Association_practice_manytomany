require 'data_mapper'

DataMapper::Logger.new($stdout, :debug)

DataMapper.setup(:default, "postgres://localhost/association_practice_many")

require './app/models/user'

DataMapper.finalize

DataMapper.auto_upgrade!