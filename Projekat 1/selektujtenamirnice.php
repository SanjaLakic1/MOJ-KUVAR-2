<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="stil.css">


    <title>Selektujete namirnince</title>
</head>





<body>
<h1 id="vrh">SELEKTUJTE NAMIRNICE</h1> 
<form action="server.php" method="post">
    <table>

        <tr>
            <td class="tekst">
                    <h3>Voce</h3>
                    <input type="checkbox" name="check_list[]" value="1">Jabuka<br>
                    <input type="checkbox" name="check_list[]" value="2">Kruska<br>
                    <input type="checkbox" name="check_list[]" value="3">Visnja<br>
                    <input type="checkbox" name="check_list[]" value="4">Sljiva<br>
                    <input type="checkbox" name="check_list[]" value="5">Grozdje<br>
                    <input type="checkbox" name="check_list[]" value="6">Brusnica<br>
                    <input type="checkbox" name="check_list[]" value="7">Ananas<br>





            </td>
        

        
            <td class="tekst">
                <h3>Povrce</h3>
                <input type="checkbox" name="check_list[]" value="8">Krompir<br>
                <input type="checkbox" name="check_list[]" value="9">Sargarepa<br>
                <input type="checkbox" name="check_list[]" value="10">Pasulj<br>
                <input type="checkbox" name="check_list[]" value="11">Grasak<br>
                <input type="checkbox" name="check_list[]" value="12">Paradajz<br>
                <input type="checkbox" name="check_list[]" value="13">Crni luk<br>
                <input type="checkbox" name="check_list[]" value="14">Beli luk<br>
                <input type="checkbox" name="check_list[]" value="15">Mix povrca<br>
                <input type="checkbox" name="check_list[]" value="31">Bundeva<br>



            </td>
    

        </tr>
        <td class="tekst">
            <h3>Osnovne namirnice </h3>
            <input type="checkbox" name="check_list[]" value="16">Brasno<br>
            <input type="checkbox" name="check_list[]" value="17">Maslinovo ulje<br>
            <input type="checkbox" name="check_list[]" value="18">Pirinac<br>
            <input type="checkbox" name="check_list[]" value="19">Testenina<br>
            <input type="checkbox" name="check_list[]" value="20">Griz<br>
            <input type="checkbox" name="check_list[]" value="21">Jaja<br>
            <input type="checkbox" name="check_list[]" value="22">Mleko<br>
            <input type="checkbox" name="check_list[]" value="23">Jogurt<br>

        </td>
    

        <td class="tekst">
            <h3>Meso</h3>
            <input type="checkbox" name="check_list[]" value="24">Pilece belo<br>
            <input type="checkbox" name="check_list[]" value="25">Teletina<br>
            <input type="checkbox" name="check_list[]" value="26">Pileci batak<br>
            <input type="checkbox" name="check_list[]" value="27">Riba<br>
            <input type="checkbox" name="check_list[]" value="28">Mleveno meso<br>
            <input type="checkbox" name="check_list[]" value="29">Suvo meso<br>
            <input type="checkbox" name="check_list[]" value="30">Tunjevina<br>




        </td>
    </tr>
    </table>
    <div id="dugme"><input type="submit"></div>
</form>
    <footer>
        <a id="sidro" href="#vrh">Vrati se na vrh stanice!</a>
    </footer>






</body>

</html>