require "provider/version"

module Provider

	def provider(params)
		provider_action(params,false,false)
	end

	def provider!(params)
		provider_action(params,true,false)
	end

	def provider_value(params)
		provider_action(params,true,true)
	end

private

	def provider_action(params,raise_exception,only_value)
		only_value = only_value
		attrs = params.is_a?(Array) ? params : params.to_a
		record = only_value ? [] : {}

		attrs.each do |attr|
			begin
				value = eval("self.#{ attr.gsub('/','.') }")
				if only_value
					value.to_s
					record.push(value)
				else
					record.update( attr => value )
				end
			rescue NoMethodError
				error_msg = "\003[31m [can't provider] #{self.class.name} #ID='#{id}' can't provider '#{attr}' \003[0m"
				if raise_exception
					raise error_msg
				else
					only_value ? record.push(" ") : record.update(attr => nil)
				end #if-end
		  end # begin-end
		end # each-end
	end # def-end

end
