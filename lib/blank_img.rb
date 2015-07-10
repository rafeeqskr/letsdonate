class NilClass
  def url
    ActionController::Base.helpers.asset_path "default_image.png"
  end
end
