require "resources/[system]/police/lib/MySQL"

MySQL:open("127.0.0.1", "gta5_gamemode_essential", "root", "root")

TriggerEvent('es:addCommand', 'goonduty', function(source)

	local identifiers = GetPlayerIdentifiers(source)

	for _, v in ipairs(identifiers) do
		identifier = v
	end
	
	local executed_query = MySQL:executeQuery("SELECT * FROM users WHERE identifier = '@name'", {['@name'] = identifier})
	local result = MySQL:getResults(executed_query, {'permission_level', 'money', 'identifier', 'group','coplevel'}, "identifier")

	local plycoplevel = result[1].coplevel
	
	TriggerClientEvent ('policeDuty',source, plycoplevel)
	
	
end)