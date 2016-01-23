# encoding: utf-8

Shoes.setup do
  gem 'pragmatic_segmenter'
end

require 'pragmatic_segmenter'

Shoes.app do
  stack do
    flow do
      text = "Hello world. My name is Mr. Smith. I work for the U.S. Government and I live in the U.S. I live in New York."
      ps = PragmaticSegmenter::Segmenter.new(text: text).segment
      para ps[0]
    end
  end
end
