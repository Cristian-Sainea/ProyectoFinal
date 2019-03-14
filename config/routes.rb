Rails.application.routes.draw do
    
    get 'solicituds/index', to: "solicituds#index"
    get 'solicituds/edit', to: "solicituds#edit"
    get 'solicituds/show', to: "solicituds#show"
    get 'solicituds/new', to: "solicituds#new"
    
    get 'servicios/index', to: "servicios#index"
    get 'servicios/edit', to: "servicios#edit"
    get 'servicios/show', to: "servicios#show"
    get 'servicios/new', to: "servicios#new"
    
    get 'huespeds/index', to: "huespeds#index"
    get 'huespeds/edit', to: "huespeds#edit"
    get 'huespeds/show', to: "huespeds#show"
    get 'huespeds/new', to: "huespeds#new"
    
    get 'empleados/index', to: "empleados#index"
    get 'empleados/edit', to: "empleados#edit"
    get 'empleados/show', to: "empleados#show"
    get 'empleados/new', to: "empleados#new"
    
    root 'pages#welcome'
    
    resources :huespeds
    resources :solicituds
    resources :servicios
    resources :empleados
    
end