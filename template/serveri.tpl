<!--<div id="modul_serveri">
<div id="serveri_title"><img src="template/images/serveri2.png" border="0" /></div>
<div class="module_line"></div>

<div id="lista_servera">

<div id="serveri_top"></div>

{foreach from=$serveri item=srv}
<div class="server_list">
<div class="server_list_title"><a href="main.php?page=server&id={$srv.id}">{$srv.name}</a></div> <div class="server_list_ip">{$srv.ip}:{$srv.port}</div> <div class="server_list_slotovi">{$srv.slotovi}</div> <div class="server_list_datum">{if $srv.istice|date_format:"%Y.%m.%d" gt $smarty.now|date_format:"%Y.%m.%d"} {$srv.istice|date_format:"%d.%m.%Y"} {else} <font color="red">{$srv.istice|date_format:"%d.%m.%Y"}</font> {/if}</div> <div class="server_list_status {if $srv.status eq 'Aktivan'}zelena{else}crvena{/if}">{$srv.status}</div>
<div class="clear"></div>
</div>
{foreachelse}
<div class="server_list">
<div class="nema_servera" style="text-align:center; padding-top:13px;">Trenutno nemate servera kod nas</div>
</div>
{/foreach}

</div>


<div id="servers_info"> 
<div class="server_list_bottom">Broj aktivnih servera:{$broj_servera}</div>
<div class="server_list_bottom">Broj aktivnih slotova:{$broj_slotova}</div>
<div class="clear"></div>
</div>
<div class="clear"></div>


</div>


</div>
-->

<br />
<div id="infoo">
	<div id="infoi"></div>
	<p><pl>Serveri</pl><br />Lista vasih servera.</p>
</div>
<table cellpadding="0" cellspacing="0" border="0" class="data">
	<thead>
	<tr>
        <th width="150">Ime Servera</th>
        <th width="200">Ip adresa</th>	
		<th width="10">Slotovi</th>		
		<th width="30">Vazi do</th>
		<th width="100">Igra</th>
		<th width="40">Status</th>
	</tr>
	</thead> 
	{foreach from=$serveri item=srv}
	<tr>
		<td colspan="1" height="20px"><a href="main.php?page=server&id={$srv.id}">{$srv.name}</a></td>
		<td colspan="1" height="20px">{$srv.ip}:{$srv.port}</td>
		<td colspan="1" height="20px">{$srv.slotovi}</td>
		<td colspan="1" height="20px">{if $srv.istice|date_format:"%Y.%m.%d" gt $smarty.now|date_format:"%Y.%m.%d"} {$srv.istice|date_format:"%d.%m.%Y"} {else} <font color="red">{$srv.istice|date_format:"%d.%m.%Y"}</font> {/if}</td>
		<td colspan="1" height="20px">Counter-Strike 1.6</td>
		<td colspan="1" height="20px" {if $srv.status eq 'Aktivan'}zelena{else}crvena{/if}>{$srv.status}</td>
	</tr>		
	{foreachelse}	
	<tbody>
	<tr>
		<td colspan="6" height="20px">Trenutno nemate nijedan server.</td>
	</tr>
	</tbody>
	{/foreach}
</table>

</body>
</html>

