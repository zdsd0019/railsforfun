Rails.application.routes.draw do
  root 'about#about'
  get '/about' => 'about#about'
  get '/ourservices' => 'about#our_services'
  get '/contact' => 'about#contact'
  get '/test' => 'about#test'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
