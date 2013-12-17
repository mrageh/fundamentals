class Door
  def locked?
    !@unlocked
  end

  def unlock
    @unlocked = true
  end
end
