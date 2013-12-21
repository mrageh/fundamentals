class Appointments
  def earliest
    @time
  end

  def at(time)
    @time = time
  end
end
