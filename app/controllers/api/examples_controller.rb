class Api::ExamplesController < ApplicationController
  def string_query
    @message = params["message"]
    @message_2 = params["message_2"]

    if @message == "board"
      @message_2 = "wait, did you say 'board'?"
    end
    
    render 'string.json.jbuilder'
  end

  def url_segment
    @message = params["this_is_a_variable"]
    render 'url_segment.json.jbuilder'
  end

  def body_example
    @message = params["message"]
    render 'body_example.json.jbuilder'
  end
end







