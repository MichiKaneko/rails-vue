Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  get 'home/index'
end
