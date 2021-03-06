/obj/structure/sign
	icon = 'icons/obj/decals.dmi'
	anchored = 1
	opacity = 0
	density = 0
	layer = 3.5

/obj/structure/sign/ex_act(severity)
	switch(severity)
		if(1.0)
			del(src)
			return
		if(2.0)
			del(src)
			return
		if(3.0)
			del(src)
			return
		else
	return

/obj/structure/sign/blob_act()
	del(src)
	return

/obj/structure/sign/attackby(obj/item/tool as obj, mob/user as mob)	//deconstruction
	if(istype(tool, /obj/item/weapon/screwdriver) && !istype(src, /obj/structure/sign/double))
		user << "You unfasten the sign with your [tool]."
		var/obj/item/sign/S = new(src.loc)
		S.name = name
		S.desc = desc
		S.icon_state = icon_state
		//var/icon/I = icon('icons/obj/decals.dmi', icon_state)
		//S.icon = I.Scale(24, 24)
		S.sign_state = icon_state
		del(src)
	else ..()

/obj/item/sign
	name = "sign"
	desc = ""
	icon = 'icons/obj/decals.dmi'
	w_class = 3		//big
	var/sign_state = ""

/obj/item/sign/attackby(obj/item/tool as obj, mob/user as mob)	//construction
	if(istype(tool, /obj/item/weapon/screwdriver) && isturf(user.loc))
		var/direction = input("In which direction?", "Select direction.") in list("North", "East", "South", "West", "Cancel")
		if(direction == "Cancel") return
		var/obj/structure/sign/S = new(user.loc)
		switch(direction)
			if("North")
				S.pixel_y = 32
			if("East")
				S.pixel_x = 32
			if("South")
				S.pixel_y = -32
			if("West")
				S.pixel_x = -32
			else return
		S.name = name
		S.desc = desc
		S.icon_state = sign_state
		user << "You fasten \the [S] with your [tool]."
		del(src)
	else ..()


/obj/structure/sign/double/map
	name = "station map"
	desc = "A framed picture of the station."

/obj/structure/sign/double/map/MS
	name = "station map"
	desc = "A framed picture of a station."

/obj/structure/sign/double/map/MS/left
	icon_state = "map-left-MS"

/obj/structure/sign/double/map/MS/right
	icon_state = "map-right-MS"

/obj/structure/sign/double/map/left
	icon_state = "map-left"

/obj/structure/sign/double/map/right
	icon_state = "map-right"

/obj/structure/sign/securearea
	name = "\improper SECURE AREA"
	desc = "A warning sign which reads 'SECURE AREA'."
	icon_state = "securearea"

/obj/structure/sign/biohazard
	name = "\improper BIOHAZARD"
	desc = "A warning sign which reads 'BIOHAZARD'"
	icon_state = "bio"

/obj/structure/sign/marksymbol_b
	layer = 2
	icon = 'icons/misc/blue_symbol.dmi'
	name = "\improper Symbol"
	desc = "You look at a blue symbol"
	icon_state = "C"

/obj/structure/sign/electricshock
	name = "\improper HIGH VOLTAGE"
	desc = "A warning sign which reads 'HIGH VOLTAGE'"
	icon_state = "shock"

/obj/structure/sign/examroom
	name = "\improper EXAM"
	desc = "A guidance sign which reads 'EXAM ROOM'"
	icon_state = "examroom"

/obj/structure/sign/vacuum
	name = "\improper HARD VACUUM AHEAD"
	desc = "A warning sign which reads 'HARD VACUUM AHEAD'"
	icon_state = "space"

/obj/structure/sign/deathsposal
	name = "\improper DISPOSAL LEADS TO SPACE"
	desc = "A warning sign which reads 'DISPOSAL LEADS TO SPACE'"
	icon_state = "deathsposal"

/obj/structure/sign/pods
	name = "\improper ESCAPE PODS"
	desc = "A warning sign which reads 'ESCAPE PODS'"
	icon_state = "pods"

/obj/structure/sign/fire
	name = "\improper DANGER: FIRE"
	desc = "A warning sign which reads 'DANGER: FIRE'"
	icon_state = "fire"

/obj/structure/sign/nosmoking_1
	name = "\improper NO SMOKING"
	desc = "A warning sign which reads 'NO SMOKING'"
	icon_state = "nosmoking"

/obj/structure/sign/nosmoking_2
	name = "\improper NO SMOKING"
	desc = "A warning sign which reads 'NO SMOKING'"
	icon_state = "nosmoking2"

/obj/structure/sign/redcross
	name = "medbay"
	desc = "The Intergalactic symbol of Medical institutions. You'll probably get help here."
	icon_state = "redcross"

/obj/structure/sign/greencross
	name = "medbay"
	desc = "The Intergalactic symbol of Medical institutions. You'll probably get help here."
	icon_state = "greencross"

/obj/structure/sign/bluecross
	name = "medbay"
	desc = "The Intergalactic symbol of Medical institutions. You'll probably get help here."
	icon_state = "bluecross"

/obj/structure/sign/bluecross/alt
	icon_state = "bluecross2"

/obj/structure/sign/lifestar
	name = "EMS"
	desc = "Star of Life is the Intergalactic symbol of emergency medical services units and personnel."
	icon_state = "lifestar"

/obj/structure/sign/goldenplaque
	name = "The Most Robust Men Award for Robustness"
	desc = "To be Robust is not an action or a way of life, but a mental state. Only those with the force of Will strong enough to act during a crisis, saving friend from foe, are truly Robust. Stay Robust my friends."
	icon_state = "goldenplaque"

/obj/structure/sign/kiddieplaque
	name = "AI developers plaque"
	desc = "Next to the extremely long list of names and job titles, there is a drawing of a little child. The child appears to be retarded. Beneath the image, someone has scratched the word \"PACKETS\""
	icon_state = "kiddieplaque"

/obj/structure/sign/atmosplaque
	name = "\improper FEA Atmospherics Division plaque"
	desc = "This plaque commemorates the fall of the Atmos FEA division. For all the charred, dizzy, and brittle men who have died in its hands."
	icon_state = "atmosplaque"

/obj/structure/sign/double/maltesefalcon	//The sign is 64x32, so it needs two tiles. ;3
	name = "The Maltese Falcon"
	desc = "The Maltese Falcon, Space Bar and Grill."

/obj/structure/sign/double/maltesefalcon/left
	icon_state = "maltesefalcon-left"

/obj/structure/sign/double/maltesefalcon/right
	icon_state = "maltesefalcon-right"

/obj/structure/sign/science			//These 3 have multiple types, just var-edit the icon_state to whatever one you want on the map
	name = "\improper SCIENCE!"
	desc = "A warning sign which reads 'SCIENCE!'"
	icon_state = "science1"

/obj/structure/sign/chemistry
	name = "\improper CHEMISTRY"
	desc = "A warning sign which reads 'CHEMISTRY'"
	icon_state = "chemistry1"

/obj/structure/sign/botany
	name = "\improper HYDROPONICS"
	desc = "A warning sign which reads 'HYDROPONICS'"
	icon_state = "hydro1"

/obj/structure/sign/wantedposter
	name = "Wanted poster"
	desc = "An old faded wanted poster with a picture of somebody wearing a gas mask. The text is illegible from age."
	icon_state = "wantedposter"

/obj/structure/sign/carp
	name = "Space Carp Display"
	desc = "Rather peculiar display of a spess carp. Somebody is quite good at space fishing."
	icon_state = "carp"


/obj/structure/sign/soviet/passport
	name = "My comrade"
	desc = "A sign depicting a passport os USSR-3, the slogan reads 'Moy tovarysch.'"
	icon_state = "Mycomrade"

/obj/structure/sign/soviet/okhotsk
	name = "\improper Okhotsuku14"
	desc = "A coat of arms of Soviet colony Okhotsk-14. Strangely, the name of the colony is also written in hieroglyphs."
	icon_state = "Okhotsuku14"

/obj/structure/sign/soviet/ks13glory
	name = "KS13"
	desc = "A sign which reads 'Glory to the space station of The New Comintern!"
	icon_state = "KC13glory"

/obj/structure/sign/soviet/armyglory
	name = "Space Army"
	desc = "A sign which reads 'Glory to the Space Army!"
	icon_state = "Glorytospacearmy"

/obj/structure/sign/soviet/ks13vympel
	name = "KS13 Pennant"
	desc = "A pennant of KS 13"
	icon_state = "KC13vympel"


/obj/structure/sign/double/planet
	name = "planet"
	desc = "A framed picture of the planet."

/obj/structure/sign/double/planet/left
	icon_state = "planet-left"

/obj/structure/sign/double/planet/right
	icon_state = "planet-right"

/obj/structure/sign/double/sky
	name = "cloudy sky"
	desc = "A framed picture of the cloudy sky."

/obj/structure/sign/double/sky/left
	icon_state = "sky-left"

/obj/structure/sign/double/sky/right
	icon_state = "sky-right"

/obj/structure/sign/double/mountain
	name = "mountain"
	desc = "A framed picture of the mountain."

/obj/structure/sign/double/mountain/left
	icon_state = "mountain-left"

/obj/structure/sign/double/mountain/right
	icon_state = "mountain-right"

//Got these from Ralphey
/obj/structure/sign/advertisement
	name = "advertisement display"
	desc = "Drink some space cola!"
	icon_state = "cola"

/obj/structure/sign/advertisement/gin
	desc = "Drink some gin!"
	icon_state = "gin"

/obj/structure/sign/advertisement/smoke
	desc = "Smoking is cool!"
	icon_state = "smoke"

/obj/structure/sign/advertisement/random //Plain copypasta from barsigns.
	icon_state = "gin"
	anchored = 1
	New()
		ChangeSign(pick("gin", "cola", "smoke"))
		return
	proc/ChangeSign(var/Text)
		src.desc = "[Text]"
		luminosity = 1
		return
