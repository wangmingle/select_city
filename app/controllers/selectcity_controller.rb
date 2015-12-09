class SelectcityController < ApplicationController
    def get_city
        @provinces = SelectCity.province_list
        @cities = SelectCity.city_list()
        p @provinces
        render json: @provinces
    end

    def get_provinces
        @provinces = SelectCity.province_list
    end

    def get_cites
        @cities = SelectCity.city_list()
        render json: @cities
    end

    def get_districtes
        city_code = params[:city_code]
        @districtes = SelectCity.districty_list(city_code)
        render json: @districtes
    end

    private

end