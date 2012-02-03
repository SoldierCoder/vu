class User < ActiveRecord::Base
  def self.create_with_omniauth(auth)
    create! do |user|
	    @my_keys        = auth.keys
      
     
      
      user.provider 	= auth["provider"]
      user.uid 				= auth["uid"]

      user.access_token 	= auth["credentials"]["token"]
      user.access_secret 	= auth["credentials"]["secret"]
      user.screen_name    = auth["info"]["nickname"] unless auth["info"]["nickname"].empty?

      user.name = auth["info"]["name"] unless auth["info"]["name"].empty?
      
      
      logger.info("#{auth.uid} Creating User entry for UID ##{user.uid}!")
      logger.info("#{auth.uid} access_token for UID ##{user.access_token}!")
      logger.info("#{auth.uid} access_secret for UID ##{user.access_secret}!")
      logger.info("#{auth.uid} screen_name for UID ##{user.screen_name}!")
      logger.info("#{auth.uid} name for UID ##{user.name}!")
  
     

      #user.followers_count = auth["extra"]["raw_info"]["followers_count"] ?  auth["extra"]["raw"]["followers_count"] : 0
	    # user.followers_count = auth.try(:get, "raw_info").try(:get, "followers_count") || 0

	    #user.created_at ||= auth["extra"]["raw_info"]["created_at"] 
	    #user.profile_image_url = auth["extra"]["raw_info"]["profile_image_url"] unless auth["extra"]["raw_info"]["profile_image_url"] == nil	    
	    #user.description = auth["extra"]["raw_info"]["description"] unless auth["extra"]["raw_info"]["description"] == nil

    end #do
  end # def create_with_omniauth
  
end
