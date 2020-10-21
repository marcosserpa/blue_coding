class UrlsController < ApplicationController
  def reduce
    url = params[:original]
    only_domain = url.sub(/^https?\:\/\/(www.)?/,'')[/[^.]+/]

    Url.create(
      original: url,
      short:
    )
  end
end