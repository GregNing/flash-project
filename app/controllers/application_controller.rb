# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you want to use :null_session instead.

  # before_action :doorkeeper_authorize!

  # alias_method :original_current_user, :current_user

  # private

  # def current_user
  #   original_current_user if warden.authenticated?(scope: :user)
  # end
end
