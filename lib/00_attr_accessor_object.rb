class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |name|
      i_var = "@#{name}".to_sym

      define_method(name) { instance_variable_get(i_var) }

      define_method(("#{name}=").to_sym) do |val|
        instance_variable_set(i_var, val)
      end

    end
  end
end
