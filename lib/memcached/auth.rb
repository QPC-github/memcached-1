class Memcached
  def destroy_credentials
    if options[:credentials] != nil
      check_return_code(Lib.memcached_destroy_sasl_auth_data(@struct))
    end
  end

  # Set the SASL credentials from the current options. If credentials aren't provided, try to get them from the environment.
  def set_credentials
    if options[:credentials]
      check_return_code(
        Lib.memcached_set_sasl_auth_data(@struct, *options[:credentials])
      )
    end
  end
end
