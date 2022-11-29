<div id="main">
{if $error}

<div id="error" style="display:none;">{$error}</div>

{else}

{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}
<div id="serverbox">
	<div id="serverbox2">
	Informacije o serveru
		<div id="serverbox3">
		<div style="margin-top: 5px;">
			<div id="naslov">Ime servera:</div><div id="plava"> {$server.name}</div><div style="height: 5px;"></div>
			<div id="naslov">Ip Adresa:</div><div id="plava"> {$server.ip}:{$server.port}</div><div style="height: 5px;"></div>
			<div id="naslov">Igra:</div><div id="plava"> {$server_igra}</div><div style="height: 5px;"></div>
			<div id="naslov">Mod:</div><div id="plava"> {$server_mod}</div><div style="height: 5px;"></div>
			<div id="naslov">Istice:</div><div id="plava" style="color: #00ff36;" class="{if $server_istice|date_format:"%Y.%m.%d" lt $smarty.now|date_format:"%Y.%m.%d"}crvena{/if}"> {$server_istice}</div><div style="height: 5px;"></div>
			<div id="naslov">Status:</div><div id="plava" class="{if $server.status eq 'Aktivan'}zelena{else}crvena{/if}"> {$server.status}</div><div style="height: 5px;"></div>
		</div>
		</div>
	</div>
	<div id="serverbox2">
	FTP Informacije
		<div id="serverbox3">
		<div style="margin-top: 5px;">
			<div id="naslov">Ip adresa:</div><div id="plava"> {$server.ip}</div><div style="height: 5px;"></div>
			<div id="naslov">FTP Port:</div><div id="plava"> {$ftp_port}</div><div style="height: 5px;"></div>
			<div id="naslov">User:</div><div id="plava"> {$server.username}</div><div style="height: 5px;"></div>
			<div id="naslov">Password:</div><div id="plava"> {$server.password}    [ <a class="promeni_ftp_sifru" style="color: #FFF;" href="#" srv_id="{$id}">Promeni</a> ]</div><div style="height: 5px;"></div>
		</div>
		</div>
	</div>	
	<div id="serverbox2" style="margin-top: -5px;">
	Server status
		<div id="serverbox3">
		<div style="margin-top: 5px;">
			<div id="naslov">Mapa:</div><div id="plava"> {$server_mapa}</div><div style="height: 5px;"></div>
			<div id="naslov">Igraci:</div><div id="plava"> {$broj_igraca}/{$maximalan_br_igraca}</div><div style="height: 5px;"></div>
			<div id="naslov">Default mapa:</div><div id="plava"> {$server_mapaa}</div><div style="height: 5px;"></div>			
		</div>
		</div>
	</div>	
	<div id="serverbox2" style="margin-top: -50px;">
	Precice
		<div id="serverbox3">
		<div style="margin-top: 5px;">
			<div id="naslov">Precice:</div><div id="plava">     <a href="main.php?page=ftp&id={$id}&path=/cstrike/addons/amxmodx/configs/">Configs</a>     <a href="main.php?page=ftp&id={$id}&path=/cstrike/addons/amxmodx/plugins/">Plugins</a>     <a href="main.php?page=ftp_file&id={$id}&path=/cstrike/&file=server.cfg">server.cfg</a>     <a href="main.php?page=ftp_file&id={$id}&path=/cstrike/addons/amxmodx/configs/&file=users.ini">users.ini</a>
</div><div style="height: 5px;"></div>
		</div>
		</div>
	</div>
</div>

	{if $server.startovan eq 1}
        <div id="komandee">
	<a href="main.php?page=server&id={$id}&action=restart"><div id="restartuj"></div></a>
	<a href="main.php?page=server&id={$id}&action=stop"><div id="stopiraj"></div></a>
	{else}
        <div id="komande">
	<a href="main.php?page=server&id={$id}&action=start"><div id="startuj"></div></a>
	{/if}
	<a href="main.php?page=ftp&id={$id}&path=/"><div id="webftp"></div></a>
	<a id="dodaj_admina_dugme" srv_id="{$id}" href="javascript:void(0)"><div id="dodajadmina"></div></a>
	<a id="promeni_mod_dugme" srv_id="{$id}" href="javascript:void(0)"><div id="promenimod"></div></a>
</div>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

<!--
<div id="precice">
<a href="main.php?page=ftp&id={$id}&path=/cstrike/addons/amxmodx/configs/">Configs</a> <a href="main.php?page=ftp&id={$id}&path=/cstrike/addons/amxmodx/plugins/">Plugins</a> <a href="main.php?page=ftp_file&id={$id}&path=/cstrike/&file=server.cfg">server.cfg</a> <a href="main.php?page=ftp_file&id={$id}&path=/cstrike/addons/amxmodx/configs/&file=users.ini">users.ini</a>
<a href="main.php?page=ftp&id={$id}&path=/cstrike/addons/amxmodx/configs/">Configs</a> <a href="main.php?page=ftp&id={$id}&path=/cstrike/addons/amxmodx/plugins/">Plugins</a> <a href="main.php?page=ftp_file&id={$id}&path=/cstrike/&file=server.cfg">server.cfg</a> <a href="main.php?page=ftp_file&id={$id}&path=/cstrike/addons/amxmodx/configs/&file=users.ini">users.ini</a>
</div>


<div id="server_detalji_left">
<div id="server_detalji_title">
<img src="template/images/server_info_title.png" border="0" />
</div>
<div id="server_detalji">
<label for="ime">Ime</label> <input type="text" name="ime" id="ime" disabled="disabled" value="{$server.name}" />

<label for="ipadresa">IP Adresa</label> <input type="text" name="ipadresa" id="ipadresa" disabled="disabled" value="{$server.ip}:{$server.port}" />

<label for="igra">Igra</label> <input type="text" name="igra" id="igra" disabled="disabled" value="Counter-Strike 1.6" />

<label for="mod">MOD</label> <input type="text" name="mod" id="mod" disabled="disabled" value="{$server_mod}" />

<label for="istek">Istice</label> <input type="text" name="istek" id="istek" disabled="disabled" class="{if $server_istice|date_format:"%Y.%m.%d" lt $smarty.now|date_format:"%Y.%m.%d"}crvena{/if}" value="{$server_istice}" />

<label for="stat">Status</label> <input type="text" name="stat" id="stat" disabled="disabled" class="{if $server.status eq 'Aktivan'}zelena{else}crvena{/if}"  value="{$server.status}" />


</div>


</div>

<div id="server_detalji_middle">

<div id="server_detalji_status">
<div id="server_detalji_status_title">
<img src="template/images/server_status.png" border="0" />
</div>
<div class="module_line"></div>

<div id="server_detalji_status_block">
<div id="server_detalji_status_left">
Mapa<br />
Igraci
</div>
<div id="server_detalji_status_right">
<div class="tamna_podloga_gore"></div>
<div class="tamna_podloga">
{$server_mapa}<br />
{$broj_igraca}/{$maximalan_br_igraca}<br />
<a href="main.php?page=server&id={$id}">Osvježi</a>
</div>
<div class="tamna_podloga_dole"></div>
</div>
<div class="clear"></div>
</div>

</div>



<div id="server_detalji_ftp">
<div id="server_detalji_status_title">
<img src="template/images/ftp_informacije.png" border="0" />
</div>
<div class="module_line"></div>

<div id="server_detalji_status_block">
<div id="server_detalji_status_left">
IP Adresa<br />
FTP port<br />
User<br />
Password
</div>
<div id="server_detalji_status_right">
<div class="tamna_podloga_gore"></div>
<div class="tamna_podloga">
{$server.ip}<br />
{$ftp_port}<br />
{$server.username}<br />
{$server.password}
</div>
<div class="tamna_podloga_dole"></div>
</div>
<div class="clear"></div>
</div>

<img class="promeni_ftp_sifru" srv_id="{$id}" src="template/images/promeni_ftp_sifru.png" border="0" />
<div class="clear"></div>
</div>

</div>



<div id="server_detalji_right">
{if $server.startovan eq 1}
<a href="main.php?page=server&id={$id}&action=restart"><img src="template/images/restartuj_server" border="0" /></a>
<a href="main.php?page=server&id={$id}&action=stop"><img src="template/images/stopiraj_server.png" border="0" /></a>
{else}
<a href="main.php?page=server&id={$id}&action=start"><img src="template/images/startuj_server.png" border="0" /></a>
{/if}
<a href="main.php?page=ftp&id={$id}&path=/"><img src="template/images/web_ftp.png" border="0" /></a>
<a id="dodaj_admina_dugme" srv_id="{$id}" href="javascript:void(0)"><img src="template/images/dodaj_novog_admina.png" border="0" /></a>
<a id="promeni_mod_dugme" srv_id="{$id}" href="javascript:void(0)"><img src="template/images/promeni_mod.png" border="0" /></a>
</div>

<div class="clear"></div>-->




{/if}
</div>

