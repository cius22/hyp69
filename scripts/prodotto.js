$(document).ready(function retrieveData() {
    
    window.alert(window.location.href);
    
    var url=window.location.href;
    
    var end=url.length;
    
    var start = url.lastIndexOf("=");
    
    start++;
    
    var id=url.slice(start, end);
    
    $.ajax({
        url: "../scripts/prodotto.php?ID="+id,
        type:"GET",
        dataType: "json",
        success: function(result){
            window.alert("yep"); 
            /*
            var nome_intero=result["Marca"]+" "+result["Modello"];
            var prezzo_listino=result["Prezzo_listino"]+"€";
            var prezzo_vendita=result["Prezzo_vendita"]+"€";
            var prezzo_rate=result["Prezzo_rate"]+"€ al mese";
            var numero_rate=result["Numero_rate"]+" rate";
            var nuovo_title="TIM - "+nome_intero;
            
            document.title = nuovo_title;
            
            document.getElementById("titolo").innerHTML = nome_intero;
            document.getElementById("bread").innerHTML =  nome_intero;
            
            document.getElementById("descrizione").innerHTML = result["Descrizione"];
            document.getElementById("prezzo_listino").innerHTML = result["Prezzo_listino"];
            document.getElementById("prezzo_vendita").innerHTML = result["Prezzo_vendita"];
            document.getElementById("prezzo_rate").innerHTML = result["Prezzo_rate"];
            document.getElementById("numero_rate").innerHTML = result["Numero_rate"];*/
        },
        
        error: function(){
        windows.alert("nope");
        }
    });
});

    