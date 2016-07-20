$( document ).ready(function retrieveData() {
    
    
    window.alert(window.location.href);
    
    var url=window.location.href;
    window.alert("URL "+url);
    
    var end=url.length;
    window.alert("END "+end);
    
    var start = url.lastIndexOf("=");
    window.alert("START "+start);
    
    start++;
    window.alert("START++ "+start);
    
    var id=url.slice(start, end);
    window.alert("ID "+id);
    
        
    var stringona = $.ajax({
        type:"GET",
        dataType: JSON,
        url: "../scripts/prodotto.php"+id;
    });
    window.alert(stringona);
    
    
    
    document.getElementById("marca").innerHTML = "Paragraph changed.";
    document.getElementById("modello").innerHTML = "Paragraph changed.";
    document.getElementById("descrizione").innerHTML = "Paragraph changed.";
    document.getElementById("prezzo_listino").innerHTML = "Paragraph changed.";
    document.getElementById("prezzo_vendita").innerHTML = "Paragraph changed.";
    document.getElementById("prezzo_rate").innerHTML = "Paragraph changed.";
    document.getElementById("numero_rate").innerHTML = "Paragraph changed.";
    
});

