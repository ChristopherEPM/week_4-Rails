class LinksController < ApplicationController
  def index

  end

  def create
    original_url = Link.check_original_url(params[:url][:original_url])

    unless(Link.exist_original_url?(original_url))
      link_shorted = [*('a'..'z'),*('A'..'Z'),*(0..9)].shuffle[0,4].join
      link = Link.new(
        :original_url => original_url,
        :shorted_url => link_shorted
        )
      link.save
    end
    redirect_to("/original_link")
  end

  def original_link
    @all = Link.all
  end

  def redirect
    link = Link.find_by(shorted_url: params[:shortlink])
    redirect_to(link.original_url)
  end

end
