-- POLICE FUNCTIONS --

policeonduty = false

RegisterNetEvent('policeDuty')

AddEventHandler('policeDuty',function(plycoplevel)

	if policeonduty then 
		policeonduty = false
		TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0}, 'You`ve gone off duty as a police officer.')
	else 
		if plycoplevel < 1 then
			TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0}, 'You are not a whitelisted police officer.')
		else
			TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0}, 'You`ve gone on duty as a police officer.')
			policeonduty = true
		end
	end
	
end)

