SelectCity::Engine.routes.draw do

    resources :selectcity do
        collection do
            get 'get_provinces'
            get 'get_cites'
            get 'get_districtes'
        end
    end
end