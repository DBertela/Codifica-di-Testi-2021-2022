            /* ALTRE INFO CARTOLINA 33 */

function show_altre_info_33() {
    var element = document.getElementById("altre_info_33")

    if (element.classList == "sottosez_altreinformazioni") {
        element.classList.remove("sottosez_altreinformazioni")
        element.classList.add("section_off");
    }

    else if (element.classList == "section_off") {
        element.classList.remove("section_off")
        element.classList.add("sottosez_altreinformazioni");
    }

    return 
}

            /* ALTRE INFO CARTOLINA 62 */

function show_altre_info_62() {
    var element = document.getElementById("altre_info_62")

    if (element.classList == "sottosez_altreinformazioni") {
        element.classList.remove("sottosez_altreinformazioni")
        element.classList.add("section_off");
    }

    else if (element.classList == "section_off") {
        element.classList.remove("section_off")
        element.classList.add("sottosez_altreinformazioni");
    }

    return 
}


/*  ==================================
===================================================
=================
                    CARTOLINA 33
=================
===================================================
==================================  */




function switch_fronte_33 () {
    /* FRONTE DA ACCENDERE */
    var fronte = document.getElementById("c33_brutal_front");

    var titolo = document.getElementById("titolo33");
    var produttore = document.getElementById("prod33");
    var descrizione = document.getElementById("desc33");
    var res = document.getElementById("res33");

    /* RETRO DA SPEGNERE */
    var retro = document.getElementById("c33_brutal_retro");

    var nota = document.getElementById("nota33");
    var data = document.getElementById("data33");

    if (retro.classList == "c_all" && nota.classList == "descelements"){
        
        /*  retro */
        retro.classList.remove("c_all");
        nota.classList.remove("descelements");
        data.classList.remove("descelements");

        retro.classList.add("section_off");
        nota.classList.add("section_off");
        data.classList.add("section_off");

        /* fronte */
        fronte.classList.remove("section_off");

        titolo.classList.remove("section_off");
        produttore.classList.remove("section_off");
        descrizione.classList.remove("section_off");
        res.classList.remove("section_off");


        fronte.classList.add("c_all");

        titolo.classList.add("descelements");
        produttore.classList.add("descelements");
        descrizione.classList.add("descelements");
        res.classList.add("descelements");
    }
    return

}


function switch_retro_33(){
    /* RETRO DA ACCENDERE */

    var retro = document.getElementById("c33_brutal_retro");

    var nota = document.getElementById("nota33");
    var data = document.getElementById("data33");
    
    /* FRONTE DA SPEGNERE */
    var fronte = document.getElementById("c33_brutal_front");

    var titolo = document.getElementById("titolo33");
    var produttore = document.getElementById("prod33");
    var descrizione = document.getElementById("desc33");
    var res = document.getElementById("res33");

    if (fronte.classList == "c_all" && titolo.classList == "descelements") {
        
        /* fronte */
        fronte.classList.remove("c_all");

        titolo.classList.remove("descelements");
        produttore.classList.remove("descelements");
        descrizione.classList.remove("descelements");
        res.classList.remove("descelements");


        fronte.classList.add("section_off");

        titolo.classList.add("section_off");
        produttore.classList.add("section_off");
        descrizione.classList.add("section_off");
        res.classList.add("section_off");

        /* retro */
        retro.classList.remove("section_off");
        nota.classList.remove("section_off");
        data.classList.remove("section_off");

        retro.classList.add("c_all");
        nota.classList.add("descelements");
        data.classList.add("descelements");

        
    }
    return
}


/*  ==================================
===================================================
=================
                    CARTOLINA 62
=================
===================================================
==================================  */




function switch_fronte_62() {
   /* FRONTE DA ACCENDERE */
   var fronte = document.getElementById("c62_brutal_front");

   var titolo = document.getElementById("titolo62");
   var art = document.getElementById("art62");
   var prod = document.getElementById("prod62");
   var descrizione = document.getElementById("desc62");
   var res = document.getElementById("res62");

   /* RETRO DA SPEGNERE */
   var retro = document.getElementById("c62_brutal_retro");

   var nota = document.getElementById("nota62");
   var tim = document.getElementById("timbri");
   var franco = document.getElementById("franco");
   var copy = document.getElementById("copy");
   var pers = document.getElementById("pers");
   var trasc = document.getElementById("trasc");

   if (retro.classList == "c_all" && tim.classList == "descelements") {
       /* retro */

       retro.classList.remove("c_all");

       nota.classList.remove("descelements_note62");
       tim.classList.remove("descelements");
       franco.classList.remove("descelements");
       copy.classList.remove("descelements");
       pers.classList.remove("descelements");
       trasc.classList.remove("descelements");

       retro.classList.add("section_off");

       nota.classList.add("section_off");
       tim.classList.add("section_off");
       franco.classList.add("section_off");
       copy.classList.add("section_off");
       pers.classList.add("section_off");
       trasc.classList.add("section_off");

       /* fronte */

       fronte.classList.remove("section_off");

       titolo.classList.remove("section_off");
       art.classList.remove("section_off");
       prod.classList.remove("section_off");
       descrizione.classList.remove("section_off");
       res.classList.remove("section_off");

       fronte.classList.add("c_62_all");

       titolo.classList.add("descelements");
       art.classList.add("descelements");
       prod.classList.add("descelements");
       descrizione.classList.add("descelements");
       res.classList.add("descelements");

   }
   return
}


function switch_retro_62() {
    /* FRONTE DA spegnere */
    var fronte = document.getElementById("c62_brutal_front");

    var titolo = document.getElementById("titolo62");
    var art = document.getElementById("art62");
    var prod = document.getElementById("prod62");
    var descrizione = document.getElementById("desc62");
    var res = document.getElementById("res62");

    /* RETRO DA ACCENDERE */
    var retro = document.getElementById("c62_brutal_retro");

    var nota = document.getElementById("nota62");
    var tim = document.getElementById("timbri");
    var franco = document.getElementById("franco");
    var copy = document.getElementById("copy");
    var pers = document.getElementById("pers");
    var trasc = document.getElementById("trasc");


    if (fronte.classList == "c_62_all" && titolo.classList == "descelements"){
        
        /* fronte */
        fronte.classList.remove("c_62_all");
        titolo.classList.remove("descelements");
        art.classList.remove("descelements");
        prod.classList.remove("descelements");
        descrizione.classList.remove("descelements");
        res.classList.remove("descelements");

        fronte.classList.add("section_off");
        titolo.classList.add("section_off");
        art.classList.add("section_off");
        prod.classList.add("section_off");
        descrizione.classList.add("section_off");
        res.classList.add("section_off");

        /* retro */
        retro.classList.remove("section_off");

        nota.classList.remove("section_off");
        tim.classList.remove("section_off");
        franco.classList.remove("section_off");
        copy.classList.remove("section_off");
        pers.classList.remove("section_off");
        trasc.classList.remove("section_off");


        retro.classList.add("c_all");

        tim.classList.add("descelements");
        nota.classList.add("descelements_note62");
        franco.classList.add("descelements");
        copy.classList.add("descelements");
        pers.classList.add("descelements");
        trasc.classList.add("descelements");
    }
    return
}









/*
======================================================================================================
======================================================================================================

                       SCALATURA DELLE AREE SULLE IMMAGINI

======================================================================================================
======================================================================================================
*/




/*

function resize_33_front_da_zero() {
    // basta solo uno tra larghezza e altezza poiché col flexbox
    //l'immagine è ridimensionata in diagonale, non per asse x o y

    //prendo le singole aree( e valuto se) metterle in un singolo array grosso
    // creo le variabili col elemento padre, dal quale poi estrapolo le coordinate
    var img = document.getElementById("c33_brutal_front"),
        // inserisco tutti gli elementi
        garib= document.getElementById("statua_garibaldi"),
        tit= document.getElementById("titolo_33"),
        simfasc= document.getElementById("simbolo_fascista"),
        edifsx= document.getElementById("edifsx"),
        edifdx= document.getElementById("edifdx"),
        
        //prelevo le coordinate da ogni elemento
        coord_garib = garib.getAttribute('coords'),
        coord_tit=tit.getAttribute('coords'),
        coord_simfasc=simfasc.getAttribute('coords'),
        coord_edifsx =edifsx.getAttribute('coords'),
        coord_edifdx=edifdx.getAttribute('coords'),

        orig_width= 1658,
        img_new_width = img.clientWidth,
        img_coeff = img_new_width /orig_width;
        
    if(img_new_width != orig_width ) {
        calcoli(coord_garib,img_coeff);
        calcoli(coord_tit,img_coeff);
        calcoli(coord_simfasc,img_coeff);
        calcoli(coord_edifsx,img_coeff);
        calcoli(coord_edifdx,img_coeff);
    }
    //capire utilità del return sotto visto che un return c'è pure in calcoli()
    return coord_garib,coord_tit,coord_simfasc,coord_edifsx,coord_edifdx;
}

function calcoli(coord,coefficiente){
    for (i=0;i<coord.length;i++){
        coord[i] *= coefficiente;
    }
    return coord
}


window.onload = resize_33_front_da_zero();

*/

