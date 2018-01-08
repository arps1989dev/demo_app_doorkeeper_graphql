class MyAuthStrategy
    def initialize(ctx)
      @user = ctx[:custom_user]
    end

    def allowed?(gate, object)
      if object.nil?
        if gate.role == :admin
          @user.admin?
        else
          @user.buyer?
        end
      else
        @user.can?(gate.role, object)
      end
    end

  end