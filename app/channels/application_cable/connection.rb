module ApplicationCable
  class Connection < ActionCable::Connection::Base
    # identified_by :current_user

    def connect
      # self.current_user = find_verified_user
      true
    end

    # Allow for current user via cookies

    protected

   #  def find_verified_user
   #   if current_user = env['warden'].user
   #     current_user
   #   else
   #     reject_unauthorized_connection
   #   end
   # end
 end
end

#       def find_verified_user
#         verified_user = env['warden'].user
#         if verified_user && cookies.signed['user.expires_at'] > Time.now
#           verified_user
#         else
#           reject_unauthorized_connection
#         end
#       end
#   end
# end
