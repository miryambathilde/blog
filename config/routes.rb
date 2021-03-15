Rails.application.routes.draw do
  get 'estaticas/contacto'
  get 'estaticas/nosotros'
  
  get 'home/index'
  #aqui le estamos indicando que la raiz es el controler home y la vista index
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
