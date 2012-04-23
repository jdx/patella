class SendLaterWorker
  @queue = :send_later

  def self.perform_later *args
    self.enqueue *args
  end

  def self.perform(class_name, instance_id, method_name, *args)
    o = class_name.constantize
    o = o.find_by_id instance_id if instance_id

    o.send(method_name, *args)
  rescue => e
    raise e, "#{e.message} \nWith SendLater: #{class_name}#{':'+instance_id.to_s if instance_id}##{method_name}(#{args.map(&:to_s).join(',')})", e.backtrace
  end
end
