#if define Contact_us

	Dyet Team
	Facebook_Page: fb.com/dyetteam
	Facebook_Group: fb.com/groups/dyetteam
	Website: dyetteam.blogspot.com
	Discord: discord.gg/r2NadnU3Vd

	Dawkin
	Facebook: fb.me/dawkinit
	Email: dawkinit@gmail.com

	Delzer
	Facebook: fb.me/delzerit
	Email: delzerit@gmail.com

#endif

#include <a_samp>
#include <streamer>

public OnGameModeInit()
{
	return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if(strcmp("/command", cmdtext, true, 10) == 0)
	{
		SetPlayerPos(playerid, 123, 456, 789);
		// SetPlayerInterior(playerid, 0);
		// SetPlayerVirtualWorld(playerid, 0);
		return 1;
	}
	return 0;
}