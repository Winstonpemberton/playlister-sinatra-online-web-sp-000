module Slugifiable

  module InstanceMethods
    def slug
      self.name.downcase.gsub(" ", "-")
    end
  end

  module ClassMethods
    def find_by_slug(slug)
      artists = Artist.all
      artist_slug_name = slug

      artists.detect do |artist|
        artist.slug == artist_slug_name
      end
    end
  end

end
