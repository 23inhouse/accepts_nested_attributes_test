AcceptsNestedAttributesForTest::Application.routes.draw do
  resources :orders, :only => [:new, :create]
end
