{if $message}
<div id="message" style="display:none;">{$message}</div>
{/if}
<div id="main">
<div id="logo"><a href="main.php"></a></div>
 



<div id="login_client">

<h1><img src="admin_support/img/icons/locked.png" alt="" />Klijent Panel</h1><br>
<form onsubmit="skloni();return false;" method="post">
<input type="text" name="email" id="emaili" class="login_input" placeholder="E-mail">
<input type="password" name="password" id="passwordi" class="login_input" placeholder="Password">
<center>
<div id="remember_me"><input type="checkbox" name="remember_me" id="remember" value="1" checked="1" /> Zapamti me | </div>
<div id="lost_pw"><a href="#" onClick="alert('Javite se podrsci na email info@hosting.com za novu lozinku..');">Zaboravili ste lozinku?</a></div>
</center>

<input type="submit" name="submit" class="login_submit" value="Login" id="loginbtni">
</form>
</div>