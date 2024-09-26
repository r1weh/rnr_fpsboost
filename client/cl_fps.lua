RegisterNetEvent('fps:openfps') 
AddEventHandler('fps:openfps', function()
    TriggerEvent('fpsboost')
end)

RegisterNetEvent('fpsboost')
AddEventHandler('fpsboost', function(data)
    lib.registerContext({
        id = 'fpsboostt',
        title = 'Menu FPS Boost',
        options = {
            {
				title = 'FPS Boost',
				event = 'fps',
			},
			{
				title = 'Basic',
				event = 'fps2',
			},
			{
				title = 'Pack Graphic',
				event = 'fps7',
			},
      {
				title = 'View & Improved lights',
				event = 'fps5',
			},
        }
    })
    lib.showContext('fpsboostt')
end)

RegisterNetEvent('fps')
AddEventHandler('fps', function()
  SetTimecycleModifier('yell_tunnel_nodirect')
end)

RegisterNetEvent('fps2')
AddEventHandler('fps2', function()
  SetTimecycleModifier()
  ClearTimecycleModifier()
  ClearExtraTimecycleModifier()
end)

RegisterNetEvent('fps7')
AddEventHandler('fps7', function()
  SetTimecycleModifier('MP_Powerplay_blend')
  SetExtraTimecycleModifier('reflection_correct_ambient')    
end)

RegisterNetEvent('fps5')
AddEventHandler('fps5', function()
  SetTimecycleModifier('tunnel') 
end)