#Excercise 12


require 'open-uri'

open("http://www.ruby-lang.org/en") do |f|
	f.each_line {|line| p line}
	puts f.base_uri			#<URI::HTTP:0x40e6ef2 URL:http://www.ruby-lang.org/en/>
	puts f.content_type		#"text/html"
	puts f.charset			#"iso-8859-1"
	puts f.content_encoding	# []
	puts f.last_modified	# Thu Dec 05 02:45:02 UTC 2002
end

=begin
Extra Credit
1. 	'require' is a method that runs another file.
	'include' is a method takes from another module and 
	includes them into the current module.
2. Can you require a script that doesn't contain a library specifically?
	Yes, it seems like require is only specific to finding another file.
	The file doesn't necessarily need to be located within a library. 
3. C:\RailsInstaller\Ruby1.9.3\lib