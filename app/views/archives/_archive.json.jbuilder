json.extract! archive, :id, :title, :health, :actionrate, :damage, :speed, :defense, :range, :troopDamage, :maxDist, :description, :notes, :created_at, :updated_at
json.url archive_url(archive, format: :json)
