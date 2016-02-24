class Link < ActiveRecord::Base

  def self.check_original_url(original_url)
    if(original_url.start_with?('http://'))
      original_url = original_url
    else
      original_url = "http://"+original_url
    end
  end

  def self.exist_original_url?(url)
    Link.find_by(original_url: url)
  end

end
