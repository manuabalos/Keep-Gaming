class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string   :title, null: false                # TITULO
      t.datetime :date_release                      # FECHA DE PUBLICACIÓN
      # t.text     :geners, :array, default: []       # GENEROS
      t.string   :developer                         # DESARROLLADOR
      t.float    :price                             # PRECIO
      t.integer  :players                           # Nº DE JUGADORES
      t.string   :online                            # MODO ONLINE
      t.string   :format                            # FORMATO
      # t.string   :texts, array: true, default: []   # IDIOMA TEXTOS
      # t.string   :voices, array: true, default: []  # IDIOMA VOCES
      t.integer  :score_metacritic                  # NOTA METACRITIC
      t.float    :score_users                       # NOTA USUARIOS
      t.float    :score_keep_gaming                 # NOTA KEEP GAMING
      t.text     :amazon_link                       # LINK AMAZON

      # TO-DO Create relationships to geners, texts and voices.
    end
  end
end
