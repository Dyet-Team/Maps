/*
    Dyet Team
    Facebook Page: fb.com/dyetteam
    Facebook Group: fb.com/groups/dyetteam
    Blog: dyetteam.blogspot.com

    Dawkin
    Facebook: fb.me/dawkinit
    Email: dawkinit@gmail.com

    Delzer
    Facebook: fb.me/delzerit
    Email: delzerit@gmail.com
*/

#include <a_samp>
#include <streamer>

#define FILTERSCRIPT

public OnFilterScriptInit()
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
        SendClientMessage(playerid, -1, "Ban da duoc dich chuyen den vi tri map");
        SetPlayerPos(playerid, 123, 456, 789);
        SetPlayerInterior(playerid, 0);
        return 1;
    }
    return 0;
}