class NounsController < ApplicationController
    def index
        nouns = Noun.all 
        render json: nouns
    end

    def show
        noun = Noun.find(params[:id])
        render json: noun
    end
end
