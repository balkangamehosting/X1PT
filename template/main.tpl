<!--<div id="modul_novosti">
<div id="novosti_title"><img src="template/images/novosti.png" border="0" /></div>
<div class="module_line"></div>


{foreach from=$news item=nws}
<div class="obavjest">
<div class="obavjest_top">
<div class="obavjest_title">{$nws.title}</div> <div class="obavjest_slash"></div> <div class="obavjest_datum">{$nws.date|date_format:"%d.%m.%Y"}</div>
<div class="clear"></div>
</div>
<div class="obavjest_text">
<div class="obavjest_top_text"></div>
<div class="obavjest_normal_text">
{$nws.text}
</div>
<div class="obavjest_bottom_text"></div>
</div>
</div>
{foreachelse}
<div class="obavjest">
<div class="obavjest_top">
<div class="obavjest_title">Nema Obavijesti</div> <div class="obavjest_slash"></div> <div class="obavjest_datum">{$smarty.now|date_format:"%d.%m.%Y"}</div>
<div class="clear"></div>
</div>
<div class="obavjest_text">
<div class="obavjest_top_text"></div>
<div class="obavjest_normal_text">
Trenutno nema vijesti ni obavijesti :)
</div>
<div class="obavjest_bottom_text"></div>
</div>
</div>
{/foreach}



</div>


</div>
-->
<br />
<div id="infoo">
	<div id="infoi"></div>
	<p><pl>Pocetna</pl><br />Procitajte najnovije novosti ili pogledajte vasu trenutnu statistiku.</p>
</div>
<div id="boxp">
	<div id="naslovbox">
		<p>NOVOSTI</p>
	</div><br />
	{foreach from=$news item=nws}
	<div id="naslov">
		<p>{$nws.title}</p>
	</div>
	<div id="datum">
		<p>{$nws.date|date_format:"%d.%m.%Y"}</p>
	</div><br /><br />
	<div id="textobavestenje">
		{$nws.text}
	</div>
	{foreachelse}
	
	{/foreach}
</div>
<div id="boxp2">
	<div id="naslovbox" style="opacity: 0.7;">
		<p>STATISTIKA</p>
	</div><br />
	<div id="naslovst">
		<p>Serveri</p>
	</div>
	<div id="textobavestenje"><br /><br /><br />
		{$broj_servera} Aktivnih, {$broj_suspendovanih} Suspendovanih, {$broj_isteklih} Isteklih
	</div>	
</div>