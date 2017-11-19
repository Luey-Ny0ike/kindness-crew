class Volunteer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :confirmable, :lockable

  def self.find_for_google_oauth2(access_token, _signed_in_resource = nil)
    data = access_token.info
    volunteer = Volunteer.where(provider: access_token.provider, uid: access_token.uid).first
    if volunteer
      return volunteer
    else
      registered_volunteer = Volunteer.where(email: access_token.info.email).first
      if registered_volunteer
        return registered_volunteer
      else
        volunteer = Volunteer.create(name: data['name'],
                                     provider: access_token.provider,
                                     email: data['email'],
                                     uid: access_token.uid,
                                     password: Devise.friendly_token[0, 20]
                                    )
      end
   end
  end
end
