MindfulEvents::Application.routes.draw do
  resources :mindful_events, only: [] do
    get :scheduled_today, :on => :collection
  end

end
