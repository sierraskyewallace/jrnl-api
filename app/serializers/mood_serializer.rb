class MoodSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description
end
