module Locomotive
  module AccountsHelper

    def options_for_account
      current_site.accounts.collect { |a| ["#{a.name} <#{a.email}>", a.id] }
    end

  end
end
