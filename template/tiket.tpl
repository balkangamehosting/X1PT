<div id="main">
{if $error}

<div id="error" style="display:none;">{$error}</div>

{else}

{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}

<div id="tiket_detalji">
<div class="obavjest_top tiket_top">
<div class="obavjest_title">{$tiket_naslov}</div>
<div class="clear"></div>
</div>
<div id="back_to_tickets">
<a href="./main.php?page=podrska"><img src="template/images/vrati_se_na_tikete.png" border="0" /></a>
</div>
<div class="clear"></div>
<div class="module_line tiket_line"></div>

<div id="lista_odgovora">

{foreach from=$odgovori item=odgovor}
<div class="obavjest">
<div class="obavjest_top tiket_odgovor_top">
<div class="obavjest_title">{$odgovor.user}</div> <div class="obavjest_slash"></div> <div class="obavjest_datum">{$odgovor.vrijeme_odgovora|date_format:"%d.%m.%Y   %H:%M:%S"}</div>
<div class="clear"></div>
</div>
<div class="obavjest_text">
<div class="obavjest_top_text"></div>
<div class="obavjest_normal_text tiket_text">
{$odgovor.odgovor}
</div>
<div class="obavjest_bottom_text"></div>
</div>
</div>
{/foreach}

{if $tiket_zatvoren eq 1}

{else}
<div id="odgovori">
<div class="odgovori_title">Odgovori:</div>
<form action="" method="post">
<textarea name="odgovor"> {$neodgovoreni_tiketi}
</textarea>
<input type="image" src="template/images/odgovori.png" border="0" class="odgovori_dugme" /> <a href="./main.php?page=tiket&id={$tiket_id}&zatvori=yes"><img src="template/images/zatvori.png" border="0" /></a>
</form>
</div>
{/if}

</div>


<div class="clear"></div>
</div>



{/if}
</div>