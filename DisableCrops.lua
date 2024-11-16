FieldJob = {
	debug = false
}

function FieldJob:loadMap(savegame)
	for name, fruitType in pairs(g_fruitTypeManager.nameToFruitType) do
		if name == "CARROT" or name == "PARSNIP" or name == "BEETROOT" then
			fruitType.useForFieldMissions = false
			if FieldJob.debug  then
				Logging.info("Debug: %s > useForFieldJob = false", name)
			end
		end
	end
end

addModEventListener(FieldJob)
print("FS25_DisableCrops 1.0.0.0 loaded.")
