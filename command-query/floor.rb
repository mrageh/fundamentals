class Floor
 def dirty?
  !@clean
 end

 def wash
   @clean = true
 end
end
