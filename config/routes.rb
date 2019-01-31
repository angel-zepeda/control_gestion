Rails.application.routes.draw do
  get 'search/create'
  get 'search/filter'
  scope 'secretaria' do
    resources :pensioners
  end
  scope 'integrador' do
    resources :pensioners
  end
  scope 'coordinador' do
    resources :pensioners
  end
  get 'pensioners/integrador'


  devise_for :users
  devise_scope :user do
    root 'devise/sessions#new'
  end
end
