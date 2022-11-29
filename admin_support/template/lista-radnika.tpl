<div id="content">
        
        
        
<h1>Radnici</h1>
                
{if $message}
{$message}
{/if}
<div class="bloc">

    <div class="title">
        Lista Radnika
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th>Ime</th>
                    <th>Prezime</th>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Email</th>
					<th>Broj odgovora u tiketima</th>
                    <th>Status</th>
                    <th>Akcija</th>
                </tr>
            </thead>

            <tbody>
            {foreach from=$radnici item=radnik}
			
                <tr>
                    <td>{$radnik.fname}</td>
                    <td>{$radnik.lname}</td>
                    <td>{$radnik.username}</td>
                    <td>{$radnik.password}</td>
                    <td>{$radnik.email}</td>
					<td>{$odgovori}</td>
                    <td>{$radnik.status}</td>
                    <td class="actions"><a href="admin.php?page=lista_radnika&brisi={$radnik.id}" title="Izbrisi radnika"><img src="template/img/icons/delete.png" alt="" /></a></td>
                </tr>
             {foreachelse}
             <tr>
             <td colspan="7">Nema ni jednog radnika.</td>
             </tr>
             {/foreach}

            </tbody>

        </table>
    </div>
</div>
                

       


</div>
        
        
