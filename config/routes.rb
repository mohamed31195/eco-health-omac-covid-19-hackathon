Rails.application.routes.draw do
  root to: "patients#index"

  get 'patients/index'

  get 'patients/file_import'

  get 'patients/show'

  get 'patients/new'
    
  get 'patients/import' => 'patients#my_import'

    resources :patients do
      collection {post :import}
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
