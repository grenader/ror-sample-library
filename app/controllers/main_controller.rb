class MainController < ApplicationController
  def index
    @env_var1 = ENV["VAULT_VAR1"]
    @env_var2 = ENV["VAULT_VAR2"]
  end
end
