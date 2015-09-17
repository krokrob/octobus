class Boss < ActiveRecord::Base
  def self.from_omniauth(auth_hash)
      boss = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
      boss.name = auth_hash['info']['nickname']
      boss.avatar_url = auth_hash['info']['image']
      boss.repo_url = auth_hash['info']['urls']['GitHub']
      boss.save!
      boss
    end
end
