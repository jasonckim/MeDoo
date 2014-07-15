Rails.application.routes.draw do
  devise_for :users

  resources :goals do
    resources :months
    resources :weeks
	resources :days
  end
  
  root 'goals#index'

end

# Peters-MacBook-Pro:MeDoo petervarga$ rake routes
#                   Prefix Verb   URI Pattern                               Controller#Action
#         new_user_session GET    /users/sign_in(.:format)                  devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                  devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                 devise/sessions#destroy
#            user_password POST   /users/password(.:format)                 devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)             devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)            devise/passwords#edit
#                          PATCH  /users/password(.:format)                 devise/passwords#update
#                          PUT    /users/password(.:format)                 devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                   devise/registrations#cancel
#        user_registration POST   /users(.:format)                          devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                  devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                     devise/registrations#edit
#                          PATCH  /users(.:format)                          devise/registrations#update
#                          PUT    /users(.:format)                          devise/registrations#update
#                          DELETE /users(.:format)                          devise/registrations#destroy
#              goal_months GET    /goals/:goal_id/months(.:format)          months#index
#                          POST   /goals/:goal_id/months(.:format)          months#create
#           new_goal_month GET    /goals/:goal_id/months/new(.:format)      months#new
#          edit_goal_month GET    /goals/:goal_id/months/:id/edit(.:format) months#edit
#               goal_month GET    /goals/:goal_id/months/:id(.:format)      months#show
#                          PATCH  /goals/:goal_id/months/:id(.:format)      months#update
#                          PUT    /goals/:goal_id/months/:id(.:format)      months#update
#                          DELETE /goals/:goal_id/months/:id(.:format)      months#destroy
#               goal_weeks GET    /goals/:goal_id/weeks(.:format)           weeks#index
#                          POST   /goals/:goal_id/weeks(.:format)           weeks#create
#            new_goal_week GET    /goals/:goal_id/weeks/new(.:format)       weeks#new
#           edit_goal_week GET    /goals/:goal_id/weeks/:id/edit(.:format)  weeks#edit
#                goal_week GET    /goals/:goal_id/weeks/:id(.:format)       weeks#show
#                          PATCH  /goals/:goal_id/weeks/:id(.:format)       weeks#update
#                          PUT    /goals/:goal_id/weeks/:id(.:format)       weeks#update
#                          DELETE /goals/:goal_id/weeks/:id(.:format)       weeks#destroy
#                goal_days GET    /goals/:goal_id/days(.:format)            days#index
#                          POST   /goals/:goal_id/days(.:format)            days#create
#             new_goal_day GET    /goals/:goal_id/days/new(.:format)        days#new
#            edit_goal_day GET    /goals/:goal_id/days/:id/edit(.:format)   days#edit
#                 goal_day GET    /goals/:goal_id/days/:id(.:format)        days#show
#                          PATCH  /goals/:goal_id/days/:id(.:format)        days#update
#                          PUT    /goals/:goal_id/days/:id(.:format)        days#update
#                          DELETE /goals/:goal_id/days/:id(.:format)        days#destroy
#                    goals GET    /goals(.:format)                          goals#index
#                          POST   /goals(.:format)                          goals#create
#                 new_goal GET    /goals/new(.:format)                      goals#new
#                edit_goal GET    /goals/:id/edit(.:format)                 goals#edit
#                     goal GET    /goals/:id(.:format)                      goals#show
#                          PATCH  /goals/:id(.:format)                      goals#update
#                          PUT    /goals/:id(.:format)                      goals#update
#                          DELETE /goals/:id(.:format)                      goals#destroy
#                     root GET    /                                         goals#index