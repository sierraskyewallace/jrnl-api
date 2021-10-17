class MoodSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :user_id
end
