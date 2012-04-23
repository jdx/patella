module Patella::SendLater

  def self.included(base)
    base.extend ClassMethods
  end

  def send_later method_name, *args
    #in dev mode, run the command in process
    if Rails.caching?
      Patella::SendLaterWorker.perform_later self.class.to_s, self.id, method_name, *args
    else
      self.send method_name, *args
    end
  end

  module ClassMethods
    def send_later method_name, *args
      if Rails.caching?
        Patella::SendLaterWorker.perform_later self.to_s, nil, method_name, *args
      else
        self.send method_name, *args
      end
    end
  end

end
