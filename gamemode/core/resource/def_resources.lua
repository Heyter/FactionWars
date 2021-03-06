if SERVER then
	resource.AddSingleFile("materials/kragle/resources/x64-electric.png")
	resource.AddSingleFile("materials/kragle/resources/x64-oil.png")
	resource.AddSingleFile("materials/kragle/resources/x64-watertap.png")
	resource.AddSingleFile("materials/kragle/resources/x64-paper.png")
	resource.AddSingleFile("materials/kragle/resources/x64-beer2.png")
	resource.AddSingleFile("materials/kragle/resources/x64-vodka.png")
	resource.AddSingleFile("materials/kragle/resources/x64-opioid.png")
	resource.AddSingleFile("materials/kragle/resources/x64-parts.png")
	resource.AddSingleFile("materials/kragle/resources/x64-medicalkit.png")
	resource.AddSingleFile("materials/kragle/resources/x64-raw_resources.png")

end

fw.resource.register("power", {
	PrintName = "Power",
	material = CLIENT and Material("kragle/resources/x64-electric.png")
})

fw.resource.register("gas", {
	PrintName = "Gas",
	material = CLIENT and Material("kragle/resources/x64-oil.png")
})

fw.resource.register("water", {
	PrintName = "Water",
	material = CLIENT and Material("kragle/resources/x64-watertap.png")
})

fw.resource.register("paper", {
	PrintName = "Paper",
	material = CLIENT and Material("kragle/resources/x64-paper.png")
})

fw.resource.register("scrap", {
	PrintName = "Scrap",
	material = CLIENT and Material("kragle/resources/x64-paper.png")
})

fw.resource.register("parts", {
	PrintName = "Parts",
	material = CLIENT and Material("kragle/resources/x64-parts.png")
})

fw.resource.register("armor", {
	PrintName = "Armor",
	material = CLIENT and Material("kragle/resources/x64-paper.png")
})

fw.resource.register("healthpack", {
	PrintName = "Health Pack",
	material = CLIENT and Material("kragle/resources/x64-medicalkit.png")
})

fw.resource.register("alcohol", {
	PrintName = "Alcohol",
	material = CLIENT and Material("kragle/resources/x64-beer2.png")
})

fw.resource.register("vodka", {
	PrintName = "Vodka",
	material = CLIENT and Material("kragle/resources/x64-vodka.png")
})

fw.resource.register("opioid", {
	PrintName = "Opioids",
	material = CLIENT and Material("kragle/resources/x64-opioid.png")
})

fw.resource.register("raw_resources", {
	PrintName = "Raw Resources",
	material = CLIENT and Material("kragle/resources/x64-raw_resources.png")
})
