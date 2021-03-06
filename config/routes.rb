Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    root to: "exercises#index"
    # get "/exercises" => "exercises#index"
    # get "/exercises/:id" => "exercises#show"
    # post "/exercises" => "exercises#create"
    # patch "/exercises/:id" => "exercises#update"
    # delete "/exercises/:id" => "exercises#destroy"

    # post "/users" => "users#create"
    # post "/sessions" => "sessions#create"

    # post "/workouts" => "workouts#create"
    # get "/workouts" => "workouts#index"
    # get "/workouts/:id" => "workouts#show"

    # get "/selected_exercises" => "selected_exercises#index"
    # post "/selected_exercises" => "selected_exercises#create"
    # delete "/selected_exercises/:id" => "selected_exercises#destroy"

    resources :exercises
    resources :users
    resources :sessions
    resources :workouts
    resources :selected_exercises
  end
end
