Rails.application.routes.draw do
  devise_for :users

  root 'songs#index'
    #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  post "/suggest_song"   => "song#new",      as: :new_song
  get  "/about_song/:id" => "song#show",     as: :song
  get  "/songs/:letter"  => "song#letter"    as: :song_letter
  
  post "/vote"           => "vote#new",      as: :new_vote
  
  post "/playlist"       => "playlist#new",  as: :new_playlist
  get  "/playlist"       => "playlist#show", as: :playlist

end
