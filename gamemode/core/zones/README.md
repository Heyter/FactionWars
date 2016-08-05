# Zones

# Functions
 - fw.zone.getControllingFaction(zone) - returns the controlling faction of a zone or nil
 - fw.zone.getContestingFaction(zone) - returns the faction contesting a zone or nil for none
 - fw.zone.getZoneData(zone) - returns a table containing all the factions, with the players in the zone, each faction's score, whether they are contesting or controlling the zone.
 - fw.zone.getControlledZones(factionID) - returns a table of all zones controlled by this faction, with the key as the zone id and the value as the zone object

# Serverside Hooks
 - FactionContestingZone (faction table, zone object) - passes the zone object and faction data with the factionID, playersInZone. NOTE: This is called every time the contest function is called, meaning this will be called A LOT
 - FactionCapturedZone (faction table, zone object) - passes the zone object and faction data with the factionID, playersInZone
 - CanZoneBeCaptured (zone object) - return whether or not the zone can be captured