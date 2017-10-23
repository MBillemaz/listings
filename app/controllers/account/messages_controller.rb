class Account::MessagesController < Account::AccountController
    def index
        @messages = Contact
    end
end