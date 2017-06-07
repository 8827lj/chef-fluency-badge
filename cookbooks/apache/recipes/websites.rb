# example recipe to change the website shown when hitting the web server's IP address


file 'default www' do 
	path '/var/www/html/index.html'
	content 'Hello World!'
end
