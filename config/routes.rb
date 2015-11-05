Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root 'pages#inicio'

  get 'pages/inicio', to: 'pages#inicio', as: 'inicio'
  get 'pages/aliados', to: 'pages#aliados', as: 'aliados'
  get 'pages/clientes', to: 'pages#clientes', as: 'clientes'
  get 'pages/consumidor', to: 'pages#consumidor', as: 'consumidor'
  get 'pages/contacto', to: 'pages#contacto', as: 'contacto'
  get 'pages/productos', to: 'pages#productos', as: 'productos'
  get 'pages/servicios', to: 'pages#servicios', as: 'servicios'

end
