# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {

  # Template Data
  # =============
  # These are variables that will be accessible via our templates
  # To access one of these within our templates, refer to the FAQ: https://github.com/bevry/docpad/wiki/FAQ
    
  templateData:
  
    site:
      url: "http://imadalin.ro"
  
      oldUrls: [
        "www.imadalin.ro",
      ]

      title: "Madalin's zone"

      slogan: "Talking about Frontend, Backend, JavaScript, CoffeeScript, Node.js, Less and Jade"

      description: """
        Hi! My name is Mădălin Ignișca. I'm a Frontend developer in love with JavaScript and Node.js. Contact me to work together.
        """

      keywords: """
        frontend, developer, javascript, nodejs, coffeescript, ecmascript5, jade, less, css3, html5, bootstrap, twitter, freelance
        """

      author: "Mădălin Ignișca"

      email: "madalin.ignisca@gmail.com"

      linkedin: "http://www.linkedin.com/in/madalinignisca"

      twitter: "https://twitter.com/16nsk"

      styles: [
        "/styles/style.css",
        "/vendor/animate.css/animate.css"
      ]

      scripts: [
        "/vendor/modernizr/modernizr.js",
        "/vendor/jquery/dist/jquery.js",
        "/vendor/bootstrap/dist/js/bootstrap.js",
        "/scripts/scripts.js"
      ]

    # Helper Functions
    # ----------------

    # Get the prepared site/document title
    # Often we would like to specify particular formatting to our page's title
    # we can apply that formatting here
    getPreparedTitle: ->
      # if we have a document title, then we should use that and suffix the site's title onto it
      if @document.title
        "#{@document.title} | #{@site.title}"
      # if our document does not have it's own title, then we should just use the site's title
      else
        @site.title

    # Get the prepared site/document description
    getPreparedDescription: ->
      # if we have a document description, then we should use that, otherwise use the site's description
      @document.description or @site.description

    # Get the prepared site/document keywords
    getPreparedKeywords: ->
      # Merge the document keywords with the site keywords
      # @site.keywords.concat(@document.keywords or []).join(', ')
      @document.keywords or @site.keywords
}

# Export the DocPad Configuration
module.exports = docpadConfig