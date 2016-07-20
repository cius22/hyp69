$(document).ready(function retrieveData() {
    
    
    var url=window.location.href;
    
    var end=url.length;
    
    var start = url.lastIndexOf("=");
    
    start++;
    
    var id=url.slice(start, end);
    
    $.ajax({
        url: "../scripts/prodotto.php?ID="+id,
        type:"GET",
        dataType: "JSON",
        success: function(result){
            
            var nome_intero=result["Marca"]+" "+result["Modello"];
            var prezzo_listino=result["Prezzo_listino"]+"€";
            var prezzo_vendita=result["Prezzo_vendita"]+"€";
            var prezzo_rate=result["Prezzo_rate"]+"€ al mese";
            var numero_rate=result["Numero_rate"]+" rate";
            var nuovo_title="TIM - "+nome_intero;
            var url_immagine=result["Immagine"];
            var immagine='<img src="'+url_immagine+'"/>';
            
            
            document.title = nuovo_title;
            
            document.getElementById("titolo").innerHTML = nome_intero;
            document.getElementById("bread").innerHTML =  nome_intero;
            
            document.getElementById("descrizione").innerHTML = result["Descrizione"];
            document.getElementById("prezzo_listino").innerHTML = prezzo_listino;
            document.getElementById("prezzo_vendita").innerHTML = prezzo_vendita;
            document.getElementById("prezzo_rate").innerHTML = prezzo_rate;
            document.getElementById("numero_rate").innerHTML = numero_rate;
            
            document.getElementById("immagine").innerHTML = immagine;
            
        },
        error: function(ts){
            window.alert(ts.responseText);
        }
    });
});

            