require "select_city/version"
require "select_city/engine"
require "json"

module SelectCity
  # Your code goes here...
  class << self
        def list(parent_id = nil)
            result = []
            data
            result
        end


        def province_list(pid = 100000)
            @list = {}
            provinces.each do |province|
                @list[province["provinceID"]] = province["province"]
            end
            @list
        end

        def city_list(code = 100000)
            @list = {"''"=>"城市/乡镇"}
            citys.find_all {|k| k["provinceID"] == code }.map do | city |
                @list[city["cityID"]] = city["city"]
            end
            @list
        end

        def districty_list(code = nil)
            @list = {}
            citys.find_all { |e| e["provinceID"].to_s == code }.map do |city|
                @list[city["cityID"]] = city["city"]
            end
            @list
        end

        private

        def city_path
            File.join(File.dirname(__FILE__), '../data')
        end

        def citys
            json = JSON.parse(File.read("#{city_path}/city.json"))
        end

        def provinces
            json = JSON.parse(File.read("#{city_path}/province.json"))
        end

    end

end
