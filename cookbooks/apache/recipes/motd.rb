# single quotes will interpret any content within literally
# in order to do variable interpolation, must use double quotes


file '/etc/motd/' do
	content "Hostname is this: #{hostname}"
end

