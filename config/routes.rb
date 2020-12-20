Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/exercises" => "exercises#index"
    get "/exercises/:id" => "exercises#show"
    post "/exercises" => "exercises#create"
    patch "/exercises/:id" => "exercises#update"
    delete "/exercises/:id" => "exercises#destroy"
  end
end
