Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get '/die', to: 'dice#roll'
  get '/current_time', to:'time#display'
  get '/math/root/:x', to:'math#root'
  get '/math/add', to: 'math#showadd'
  post '/math/add', to: 'math#computeadd'
  get '/math/ransum', to: 'math#get_ransum'
  post '/math/ransum', to: 'math#post_ransum'
  get '/math/duplicatecounter', to:'math#get_duplicatecounter'
  post '/math/duplicatecounter', to:'math#post_duplicatecounter'
  get '/math/getstockprice', to:'math#get_stockprice'
  post '/math/getstockprice', to:'math#post_stockprice'
end
