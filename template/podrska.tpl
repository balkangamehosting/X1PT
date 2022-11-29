<!--<div id="main">
{if $error}

<div id="error" style="display:none;">{$error}</div>

{else}

{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}


<div id="podrska">
<div id="novosti_title"><img border="0" src="template/images/podrska_title.png"></div>
<div class="module_line"></div>
<div id="podrska_opis">
Dobrodosli na X1PT Hosting support.<br />
Otvorite Vas tiket i sacekajte odgovor koji ce te dobiti u roku od 24h.<br />
Ako ste dobili odgovor molimo Vas ZATVORITE tiket !!!<br />
</div>
<div id="podrska_menu">
<a href="./main.php?page=podrska&arhiva=yes"><img src="template/images/pogledaj_sve_tikete.png" border="0" /></a> <a href="./main.php?page=otvori_tiket"><img src="template/images/otvori_novi_tiket.png" border="0" /></a>
</div>
</div>

<div id="tiketi">
<div id="ftp_title_left"></div>
<div id="ftp_title_normal">

<div class="podrska_tiket_title" style="width:63px;"><img border="0" src="template/images/tiket_status.png"></div>
<div class="podrska_tiket_title" style="width:85px;"><img border="0" src="template/images/tiket_id.png"></div>
<div class="podrska_tiket_title" style="width:80px;"><img border="0" src="template/images/tiket_datum.png"></div>
<div class="podrska_tiket_title" style="width:160px;"><img border="0" src="template/images/tiket_server.png"></div>
<div class="podrska_tiket_title" style="width:172px;"><img border="0" src="template/images/naslov_tiketa.png"></div>
<div class="podrska_tiket_title" style="width:79px; margin-top:-6px;"><img border="0" src="template/images/broj_odgovora.png"></div>
<div class="podrska_tiket_title" style="width:79px; margin-top:-6px;"><img border="0" src="template/images/poslednji_odgovor.png"></div>
<div class="clear"></div>
</div>
<div id="ftp_title_right"></div>
</div>
<div class="clear"></div>
<div id="ticket_list">


{foreach from=$tiketi item=tiket}

<div class="tiket_status">{$tiket.status}</div>
<div class="tiket_id"><a href="main.php?page=tiket&id={$tiket.id}">#{$tiket.id}</a></div>
<div class="tiket_datum">{$tiket.datum|date_format:"%d.%m.%Y"}</div>
<div class="tiket_server">{$tiket.ip}:{$tiket.port}</div>
<div class="naslov_tiketa"><a href="main.php?page=tiket&id={$tiket.id}">
{if $tiket.naslov|count_characters > 21} 
{$tiket.naslov|substr:0:21}...
{else}
{$tiket.naslov}
{/if}
</a></div>
<div class="broj_odgovora">{$tiket.broj_odgovora}</div>
<div class="poslednji_odgovor">{$tiket.zadnji_odgovor|date_format:"%H:%M:%S"}</div>
<div class="clear"></div>

{foreachelse}

<div class="nema_tiketa" style="text-align:center; padding-top:13px; padding-bottom:13px;">Nema tiketa :)</div>

{/foreach}




<div class="clear"></div>
</div>


{/if}
</div>-->

<br />
<div id="infoo">
	<div id="infoi"></div>
	<p><pl>Podrska</pl><br />Otvorite Vas tiket i sacekajte odgovor koji ce te dobiti u roku od 24h.</p>
</div>
<div id="buttton">
	<a href="./main.php?page=podrska&arhiva=yes" style="text-decoration: none;"><input type="submit" value="Svi tiketi" id="button" /></a>
	<a href="./main.php?page=otvori_tiket" style="text-decoration: none;"><input type="submit" value="Novi tiket" id="button" /></a>
</div>
<table cellpadding="0" cellspacing="0" border="0" class="data">
	<thead>
	<tr>
        <th width="90">Status</th>
        <th width="115">ID Tiketa</th>	
		<th width="90">Datum</th>		
		<th width="190">Server</th>
		<th width="160">Naslov tiketa</th>
		<th width="150">Broj poruka</th>
		<th width="120">Poslednji odgovor</th>
	</tr>
	</thead> 
	{foreach from=$tiketi item=tiket}
	<tr>
		<td colspan="1" height="20px">{$tiket.status}</td>
		<td colspan="1" height="20px"><a href="main.php?page=tiket&id={$tiket.id}">#{$tiket.id}</a></td>
		<td colspan="1" height="20px">{$tiket.datum|date_format:"%d.%m.%Y"}</td>
		<td colspan="1" height="20px">{$tiket.ip}:{$tiket.port}</td>
		<td colspan="1" height="20px"><a href="main.php?page=tiket&id={$tiket.id}">
{if $tiket.naslov|count_characters > 21} 
{$tiket.naslov|substr:0:21}...
{else}
{$tiket.naslov}
{/if}
</a></td>
		<td colspan="1" height="20px">{$tiket.broj_odgovora}</td>
		<td colspan="1" height="20px">{$tiket.zadnji_odgovor|date_format:"%H:%M:%S"}</td>
	</tr>		
	{foreachelse}	
	<tbody>
	<tr>
		<td colspan="6" height="20px">Nemate jos nijedan tiket.</td>
	</tr>
	</tbody>
	{/foreach}
</table>