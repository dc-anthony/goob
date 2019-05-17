class GoobJob
  include SuckerPunch::Job

  def perform
    raise NotImplementedError
  end
end
