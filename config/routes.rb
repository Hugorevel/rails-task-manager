Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #read all tasks
  get "tasks" => "tasks#index"
  # create a task
    # - Afficher le formulaire
  get "tasks/new" => "tasks#new", as: :new_task
    # - Poster la nouvelle task
  post "tasks" => "tasks#create"
  # read one task
  get "tasks/:id" => "tasks#show", as: :task


  #update a task
   #- Afficher le formulaire
  get "tasks/:id/edit" => "tasks#edit", as: :edit_task
  patch "tasks/:id" => "tasks#update"

  #destroy a task
  delete "tasks/:id" => "tasks#destroy", as: :destroy_task


end
