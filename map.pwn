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

#pragma tabsize 0

main() {}

new SV_GSTREAM:gstream;
new SV_LSTREAM:lstream[MAX_PLAYERS] = { SV_NULL, ... };

public SV_VOID:OnPlayerActivationKeyPress(
	SV_UINT:playerid,
	SV_UINT:keyid
) {
	if (keyid == 0x42 && lstream[playerid]) SvAttachSpeakerToStream(lstream[playerid], playerid);
	if (keyid == 0x5A && gstream) SvAttachSpeakerToStream(gstream, playerid);
}

public SV_VOID:OnPlayerActivationKeyRelease(
	SV_UINT:playerid,
	SV_UINT:keyid
) {
	if (keyid == 0x42 && lstream[playerid]) SvDetachSpeakerFromStream(lstream[playerid], playerid);
	if (keyid == 0x5A && gstream) SvDetachSpeakerFromStream(gstream, playerid);
}

public OnPlayerConnect(playerid) {

	if (!SvGetVersion(playerid)) SendClientMessage(playerid, -1, "Khong the tim thay plugin voice chat");
	else if (!SvHasMicro(playerid)) SendClientMessage(playerid, -1, "Khong the tim thay mic");
	else if (lstream[playerid] = SvCreateDLStreamAtPlayer(40.0, SV_INFINITY, playerid, 0xff0000ff, "L")) { // red color
		SendClientMessage(playerid, -1, "Voice chat da khoi dong thanh cong");
		if (gstream) SvAttachListenerToStream(gstream, playerid);
		SvAddKey(playerid, 0x42);
		SvAddKey(playerid, 0x5A);
	}
	
	return 1;
	
}

public OnPlayerDisconnect(playerid, reason) {

	if (lstream[playerid]) {
		SvDeleteStream(lstream[playerid]);
		lstream[playerid] = SV_NULL;
	}

	return 1;
	
}


public OnFilterScriptInit() {

	//SvDebug(SV_TRUE);
	
	gstream = SvCreateGStream(0xffff0000, "G"); // blue color

	return 1;
	
}

