class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end
 expose(:current_account){
   url = request.original_url.split(':')
   url = url[1].split('.')
   subdomain = url[0].split('//').last
   domain = url[1] + '.' + url[2]
   if Account.find_by_subdomain_and_domain(subdomain, domain)
     current_account = Account.find_by_subdomain_and_domain(subdomain, domain)
   else
     current_account = Account.first
   end
 }
  protect_from_forgery with: :exception
end
