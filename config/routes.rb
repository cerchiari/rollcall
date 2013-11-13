Rollcall::Application.routes.draw do
  # Routes for the Attendance resource:
  # CREATE
  get '/attendances/new', controller: 'attendances', action: 'new', as: 'new_attendance'
  post '/attendances', controller: 'attendances', action: 'create', as: 'attendances'

  # READ
  get '/attendances', controller: 'attendances', action: 'index'
  get '/attendances/:id', controller: 'attendances', action: 'show', as: 'attendance'

  # UPDATE
  get '/attendances/:id/edit', controller: 'attendances', action: 'edit', as: 'edit_attendance'
  patch '/attendances/:id', controller: 'attendances', action: 'update'

  # DELETE
  delete '/attendances/:id', controller: 'attendances', action: 'destroy'
  #------------------------------

  # Routes for the Student resource:
  # CREATE
  get '/students/new', controller: 'students', action: 'new', as: 'new_student'
  post '/students', controller: 'students', action: 'create', as: 'students'

  # READ
  get '/students', controller: 'students', action: 'index'
  get '/students/:id', controller: 'students', action: 'show', as: 'student'

  # UPDATE
  get '/students/:id/edit', controller: 'students', action: 'edit', as: 'edit_student'
  patch '/students/:id', controller: 'students', action: 'update'

  # DELETE
  delete '/students/:id', controller: 'students', action: 'destroy'
  #------------------------------

  # Routes for the Meeting resource:
  # CREATE
  get '/meetings/new', controller: 'meetings', action: 'new', as: 'new_meeting'
  post '/meetings', controller: 'meetings', action: 'create', as: 'meetings'

  # READ
  get '/meetings', controller: 'meetings', action: 'index'
  get '/meetings/:id', controller: 'meetings', action: 'show', as: 'meeting'

  # UPDATE
  get '/meetings/:id/edit', controller: 'meetings', action: 'edit', as: 'edit_meeting'
  patch '/meetings/:id', controller: 'meetings', action: 'update'

  # DELETE
  delete '/meetings/:id', controller: 'meetings', action: 'destroy'
  #------------------------------

  # Routes for the Course resource:
  # CREATE
  get '/courses/new', controller: 'courses', action: 'new', as: 'new_course'
  post '/courses', controller: 'courses', action: 'create', as: 'courses'

  # READ
  get '/courses', controller: 'courses', action: 'index'
  get '/courses/:id', controller: 'courses', action: 'show', as: 'course'

  # UPDATE
  get '/courses/:id/edit', controller: 'courses', action: 'edit', as: 'edit_course'
  patch '/courses/:id', controller: 'courses', action: 'update'

  # DELETE
  delete '/courses/:id', controller: 'courses', action: 'destroy'
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
