class ClicksController < ApplicationController
  def index
    # This technique wouldn't scale well with many different click.title
    # values because it loads every title and its click count into memory.
    # MongoDB 2.2+'s aggregation framework could be used to fix this.
    @most_clicked_titles =
      Click.map_reduce("function(){ emit(this.title, 1) }",
                       "function(key, values){ return Array.sum(values) }")
           .out(inline: true)
           .collect {|i| i[:title] = i.delete("_id")
                         i[:count] = i.delete("value").to_i
                         i }
           .sort_by {|i| i[:count] }.reverse
           .first(10)

    if request.xhr?
      render layout: false
    end
  end

  def create
    if params[:throw_exception] == 'true'
      raise Exception, "params[:throw_exception] == 'true'"
    end

    CreateClickWorker.perform_async click_params[:title], Time.now.utc
    head :created
  end

  private
    def click_params
      params.require(:click).permit(:title)
    end
end
