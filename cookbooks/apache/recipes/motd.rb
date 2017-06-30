# single quotes will interpret any content within literally
# in order to do variable interpolation, must use double quotes

# the path of the file to mngd is also the file resource name

hostname = node('hostname')
file '/etc/motd/' do
	content "Hostname is this: #{hostname}"
end

	
