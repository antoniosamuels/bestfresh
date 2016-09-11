module FarmsHelper
  def checked(area)
    @farm.genre.nil? ? false : @farm.genre.match(area)
  end
end
