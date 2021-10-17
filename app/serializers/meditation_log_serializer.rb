class MeditationLogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :duration
end
