{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}
<div id="profil">
<div id="profil_title"><img src="template/images/profil_title.png" border="0" /></div>
<div class="module_line"></div>
<div id="profile_form">
<form action="" method="post">
<label for="fname">Ime :</label> <input type="text" name="fname" value="{$profil_fname}" />
<label for="lname">Prezime :</label> <input type="text" name="lname" value="{$profil_lname}" />
<label for="email">Email :</label> <input readonly="readonly" ype="text" name="email" value="{$profil_email}" />
<label for="password">Sifra :</label> <input type="password" name="password" autocomplete="off" />
<center><div id="test"><input type="submit" value="Sacuvaj" id="button" /></div></center>
</form>
</div>
</div>