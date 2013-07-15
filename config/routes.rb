CocoonSampleApp::Application.routes.draw do
  resources :contact_mechanism_types

  resources :party_role_types

  resources :electronic_addresses

  resources :contact_mechanisms

  resources :parties

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'parties#index'
 
end
