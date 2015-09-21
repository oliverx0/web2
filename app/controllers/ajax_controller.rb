class AjaxController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def carousel
    values = [
        {
            "caption": "Parents' house from the air",
            "id": 26,
            "preview_url": "http://s3.amazonaws.com/flightseein/photographs/26/images/carousel-ac52ff7c1f101e9fe86b1bbe0c7e8dab.png",
            "url": "http://s3.amazonaws.com/flightseein/photographs/26/images/original-ac52ff7c1f101e9fe86b1bbe0c7e8dab.jpeg"
        },
        {
            "caption": "Mt. Diablo",
            "id": 27,
            "preview_url": "http://s3.amazonaws.com/flightseein/photographs/27/images/carousel-9bcf168a861a840be7cdd2914bb3e539.png",
            "url": "http://s3.amazonaws.com/flightseein/photographs/27/images/original-9bcf168a861a840be7cdd2914bb3e539.jpeg"
        },
        {
            "caption": "UC Berkeley",
            "id": 28,
            "preview_url": "http://s3.amazonaws.com/flightseein/photographs/28/images/carousel-663d4602da82c6b2bd0f88cd5be2da7d.png",
            "url": "http://s3.amazonaws.com/flightseein/photographs/28/images/original-663d4602da82c6b2bd0f88cd5be2da7d.jpeg"
        }
    ]

    render :json => values.to_json
  end

end
