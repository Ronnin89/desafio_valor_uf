Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'uf/:date', to: 'api/uf_values#by_date'

  get 'client/:name', to: 'api/clients#by_user'
end
