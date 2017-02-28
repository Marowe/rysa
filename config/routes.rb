Rails.application.routes.draw do
  namespace :api do
      get "/locations/:country_code", to: "locations#index", as: :country_code_locations
      get "/target_groups/:country_code", to: "target_groups#index", as: :country_code_target_groups
  end


  namespace :api_private do
      get "/locations/:country_code", to: "locations#index", as: :country_code_locations
      get "/target_groups/:country_code", to: "target_groups#index", as: :country_code_target_groups
      post "/evaluate_target", to: "evaluate_target#evaluate", as: :evaulated_target
  end
end
