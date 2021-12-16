<?xml version="1.0" encoding="UTF-8"?>


<!-- codice GIUSTO da lanciare su terminale 

QUESTO SOTTO HA PATH ASSOLUTI (NO BUONO) MA FUNZIONARE FUNZIONA
java -jar Desktop/SaxonHE10-6J/saxon-he-10.6.jar -s:/Users/diego/Desktop/proj_538672/proj_xml.xml -xsl:/Users/diego/Desktop/proj_538672/proj_xsl.xsl  -o:/Users/diego/Desktop/proj_538672/temp.html



-->


<xsl:stylesheet version="1.0"
       xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
       xmlns:tei="http://www.tei-c.org/ns/1.0"
       xmlns="http://www.w3.org/1999/xhtml">
       <xsl:output 
            method="html" 
            encoding="UTF-8" 
            indent="yes"
            omit-xml-declaration="yes" />
        
    <xsl:template match="/tei:TEI">
        <html>
            <head>
                <title> 
                    <xsl:value-of select="//tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                </title>  

                <link href="stile_proj.css" rel="stylesheet" type="text/css"/>  

                <script src="proj_js.js" type="text/javascript"/>
                
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
            </head>
            <body>
                
                <xsl:element name="div">
                    <xsl:attribute name ="id">SUB-body</xsl:attribute>

                        <header>
                            <xsl:comment>
                                Progetto per l'esame di Codifica di Testi, aa 2020/21
                                Codifica di cartoline storiche della Grande Guerra
                                A cura di: Diego Bertelà, mat. 538672
                            </xsl:comment>
                            <xsl:element name="h1">
                                <xsl:attribute name="id">titoloproj</xsl:attribute>
                                <xsl:value-of select="//tei:titleStmt/tei:title"/>
                            </xsl:element>

                            <xsl:element name="div">
                                <xsl:attribute name="id">scritte_header</xsl:attribute>
                                <xsl:element name="div">
                                    <xsl:attribute name="id">present_proj</xsl:attribute>
                                    <xsl:element name="p">
                                        In questa pagina sono presentate digitalmente, dopo essere state codificate, 
                                        due cartoline appartenenti ad una collezione di 227 presenti 
                                        al Museo Civico Etnografico "Giovanni Podenzana" presso La Spezia.
                                        <br/> 
                                        Nella pagina sono rappresentate in ordine crescente, quindi:
                                        <br/> 
                                        N°33: Mai inviata.
                                        <br/> 
                                        N°62: Ricevuta dalla signorina Oliva Turtura da sua zia.
                                    </xsl:element>
                                </xsl:element>

                                <xsl:element name="div">
                                    <xsl:attribute name="id">motivaz</xsl:attribute>
                                    <xsl:element name="p">
                                        La scelta di queste due cartoline così opposte, nasce dalla volontà
                                        di riuscire a rappresentare in maniera sintetica la bellezza dello stile
                                        del bianco e nero in due contesti diversi come quello di una fotografia
                                        e quello di un'opera artistica.
                                        <br/>
                                        Queste però non differiscono solo per la tipologia di immagine raffigurata,
                                        ma persino per la propria storia, poiché la n° 62 è stata adoperata e 
                                        spedita, mentre la n°33 è rimasta inutilizzata.
                                    </xsl:element>
                                </xsl:element>
                            </xsl:element>
                        </header>

                        <xsl:element name="div">
                            <xsl:attribute name="id"><xsl:value-of select="/tei:TEI/tei:TEI[1]/@xml:id"/></xsl:attribute>
                            <xsl:element name="h1">
                                <xsl:attribute name="class">nomecart</xsl:attribute>
                                <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                            </xsl:element>

                            <xsl:element name="div">
                                <xsl:attribute name="id">settoreimgbutt33</xsl:attribute> 
                            
                                <xsl:element name="div">
                                    <xsl:attribute name="id">img33</xsl:attribute>
                                    
                                    <xsl:element name="div">
                                        <xsl:attribute name="id">c33main</xsl:attribute>
                                        <xsl:element name="img">
                                            <xsl:attribute name="id">c33_brutal_front</xsl:attribute>
                                            <xsl:attribute name="class">c_all</xsl:attribute>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:graphic/@url"/>
                                            </xsl:attribute>

                                            <xsl:attribute name="usemap">
                                                <xsl:value-of select="concat('#',/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface/@xml:id)"/>
                                            </xsl:attribute>
                                        </xsl:element>
                                        <xsl:element name="map">
                                            <xsl:attribute name="name"> 
                                                <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface/@xml:id"/>
                                            
                                            
                                            </xsl:attribute>
                                            
                                    <!-- ================== S E Z I O N E    A R E E    C 3 3       F R 0 N T  ================== -->          
                                            
                                        <!-- STATUA GARIBALDI -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='statua_garibaldi']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="class">areas33_front</xsl:attribute>
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 
                                                    
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='statua_garibaldi']/@ulx"/>,
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='statua_garibaldi']/@uly"/>,
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='statua_garibaldi']/@lrx"/>,
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='statua_garibaldi']/@lry"/>
                                                </xsl:attribute>
                                            </xsl:element>
                                            
                                        <!-- TITOLO -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='titolo_33']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="class">areas33_front</xsl:attribute>
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords">

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='titolo_33']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='titolo_33']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='titolo_33']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='titolo_33']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>

                                        <!-- SIMBOLO FASCISTA -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='simbolo_fascista']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="class">areas33_front</xsl:attribute>
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='simbolo_fascista']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='simbolo_fascista']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='simbolo_fascista']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='simbolo_fascista']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>
                                            
                                        <!-- EDIFICIO SX -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='edifsx']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="class">areas33_front</xsl:attribute>
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='edifsx']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='edifsx']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='edifsx']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='edifsx']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>


                                        <!-- EDIFICIO DX -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='edifdx']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="class">areas33_front</xsl:attribute>
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords">

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='edifdx']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='edifdx']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='edifdx']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_front']/tei:zone[@xml:id='edifdx']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>
                                        </xsl:element>



                                    <!-- ================== S E Z I O N E    A R E E    C 3 3       RETRO  ================== --> 
                                        
                                        <xsl:element name="img">
                                            <xsl:attribute name="id">c33_brutal_retro</xsl:attribute>
                                            <xsl:attribute name="class">section_off</xsl:attribute>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_retro']/tei:graphic/@url"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="usemap">
                                                <xsl:value-of select="concat('#',/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[2]/@xml:id)"/>
                                            </xsl:attribute>
                                        </xsl:element>

                                        
                                        <xsl:element name="map">
                                            <xsl:attribute name="name"> 
                                                <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[2]/@xml:id"/>
                                            </xsl:attribute>

                                        <!-- ACRONIMO -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_retro']/tei:zone[@xml:id='acronimo']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                            
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_retro']/tei:zone[@xml:id='acronimo']/@ulx"/>,
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_retro']/tei:zone[@xml:id='acronimo']/@uly"/>,
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_retro']/tei:zone[@xml:id='acronimo']/@lrx"/>,
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_retro']/tei:zone[@xml:id='acronimo']/@lry"/>
                                                </xsl:attribute>
                                            </xsl:element>
                                            
                                        <!-- NUMERO CARTOLINA -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_retro']/tei:zone[@xml:id='numerocart33']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords">

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_retro']/tei:zone[@xml:id='numerocart33']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_retro']/tei:zone[@xml:id='numerocart33']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_retro']/tei:zone[@xml:id='numerocart33']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_retro']/tei:zone[@xml:id='numerocart33']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>

                                        <!-- NOME PRODUTTORE -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_retro']/tei:zone[@xml:id='nomeproduttore']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_retro']/tei:zone[@xml:id='nomeproduttore']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_retro']/tei:zone[@xml:id='nomeproduttore']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_retro']/tei:zone[@xml:id='nomeproduttore']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:facsimile/tei:surface[@xml:id='c33_retro']/tei:zone[@xml:id='nomeproduttore']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>
                                        </xsl:element>

                                    <!-- ≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠ FINE AREE CARTOLINA 33  ≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠ -->


                                        <xsl:element name="div">
                                            <xsl:attribute name="id">linea</xsl:attribute>  
                                        </xsl:element>
                                        <xsl:element name="div">
                                            <xsl:attribute name="id">sezionedx33</xsl:attribute>
                                            
                                            <xsl:element name="div"> <!-- BOTTONI 33-->
                                                <xsl:attribute name="id">buttons33</xsl:attribute>
                                                <xsl:attribute name="class">buttons</xsl:attribute>
                                                <xsl:element name="button">
                                                    <xsl:attribute name="id">fronte33</xsl:attribute>
                                                    <xsl:attribute name="type">submit</xsl:attribute>
                                                    
                                                    <xsl:attribute name="onclick">switch_fronte_33()</xsl:attribute>
                                                    
                                                    Fronte
                                                </xsl:element>

                                                <xsl:element name="button">
                                                    <xsl:attribute name="id">retro33</xsl:attribute>
                                                    <xsl:attribute name="type">submit</xsl:attribute>
                                        
                                                    <xsl:attribute name="onclick">switch_retro_33()</xsl:attribute>
                                                    
                                                    Retro
                                                </xsl:element>

                                                <xsl:element name="button">
                                                    <xsl:attribute name="id">piuinfo33</xsl:attribute>
                                                    <xsl:attribute name="type">submit</xsl:attribute>
                                                    
                                                    <xsl:attribute name="onclick">show_altre_info_33()</xsl:attribute>
                                                    
                                                    Altre informazioni
                                                </xsl:element>

                                            </xsl:element>  
                                            <!-- FINE - BOTTONI 33-->

                                            <xsl:element name="div">
                                                <xsl:attribute name="id">desc_all_33</xsl:attribute>
                                            <!--  FRONTE 33-->
                                                <xsl:element name="div"> <!-- TITOLO -->
                                                    <xsl:attribute name="class">descelements</xsl:attribute>
                                                    <xsl:attribute name="id">titolo33</xsl:attribute>
                                                    <xsl:element name="h1">TITOLO</xsl:element>
                                                    <xsl:element name="i">
                                                        <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                                                    </xsl:element>
                                                </xsl:element>
                                                <xsl:element name="div"> <!-- PRODUTTORE -->
                                                    <xsl:attribute name="class">descelements</xsl:attribute>
                                                    <xsl:attribute name="id">prod33</xsl:attribute>
                                                    <xsl:element name="h1">PRODUTTORE</xsl:element>
                                                    <xsl:element name="i">
                                                        <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:publisher/tei:orgName"/>
                                                    </xsl:element>
                                                </xsl:element>
                                                <xsl:element name="div"> <!-- DESCRIZIONE -->
                                                    <xsl:attribute name="class">descelements</xsl:attribute>
                                                    <xsl:attribute name="id">desc33</xsl:attribute>
                                                    <xsl:element name="h1">DESCRIZIONE</xsl:element>
                                                    <xsl:element name="i">
                                                        <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:text[@xml:id='descimmaginec33']/tei:body/tei:div/tei:figure/tei:figDesc"/>
                                                    </xsl:element>
                                                </xsl:element>


                                                <xsl:element name="div"> <!-- RESOCONTO FRONTE 33 -->
                                                    <xsl:attribute name="class">descelements</xsl:attribute>
                                                    <xsl:attribute name="id">res33</xsl:attribute>
                                                    <xsl:element name="h1">RESOCONTO</xsl:element>
                                                    <xsl:element name="i">
                                                        La cartolina rappresenta la piazza recante
                                                        <br/>
                                                        il meraviglioso monumento equestre raffigurante
                                                        <br/> 
                                                        Giuseppe Garibaldi, durante il ventennio fascista,
                                                        <br/>
                                                        come possiamo dedurre dalla data di produzione e
                                                        <br/>
                                                        dai fasci littori alla base della cornice della statua.
                                                    </xsl:element>
                                                </xsl:element>

                                            <!-- ================= FINE - ROBA FRONTE 33 ================= -->

                                         
                                            
                                            <!--  RETRO 33 -->
                                                <xsl:element name="div"> <!-- NOTA-->
                                                <xsl:attribute name="id">nota33</xsl:attribute>
                                                <xsl:attribute name="class">section_off</xsl:attribute>
                                                    <xsl:element name="h1">NOTA</xsl:element>
                                                    <xsl:element name="i">
                                                        <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:teiHeader/tei:fileDesc/tei:notesStmt/tei:note"/>
                                                    </xsl:element>
                                                </xsl:element>

                                                <xsl:element name="div"> <!-- DATA-->
                                                <xsl:attribute name="id">data33</xsl:attribute>
                                                <xsl:attribute name="class">section_off</xsl:attribute>
                                                    <xsl:element name="h1">DATA</xsl:element>
                                                    <xsl:element name="i">
                                                        <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:date"/>
                                                    </xsl:element>
                                                </xsl:element>


                                            <!-- ================= FINE RETRO 33 ================= -->
                                            </xsl:element>
                                        </xsl:element>
                                    </xsl:element>
                                    
                                    <!-- SEZIONE DELLE INFORMAZIONI AGGIUNTIVE 33 -->
                                    <xsl:element name="div">
                                        <xsl:attribute name="class">section_off</xsl:attribute>
                                        <xsl:attribute name="id">altre_info_33</xsl:attribute>
                                        <xsl:element name="div">
                                            <xsl:attribute name="id">cod_id</xsl:attribute>
                                            <h3>Codice Identificativo</h3>
                                            <i><xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:idno"/></i>
                                        </xsl:element>
                                        <xsl:element name="div">
                                            <xsl:attribute name="id">contenuto</xsl:attribute>
                                            <h3>Prospetto</h3>
                                            <i><xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:summary"/></i>
                                        </xsl:element>
                                        <xsl:element name="div">
                                            <xsl:attribute name="id">materiale</xsl:attribute>
                                            <h3>Materiale</h3>
                                            <i><xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:material"/></i>
                                        </xsl:element>
                                        <xsl:element name="div">
                                            <xsl:attribute name="id">dimensioni</xsl:attribute>
                                            <h3>Dimensioni</h3>
                                            <i><xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:dimensions/tei:height"/> x <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:dimensions/tei:width"/> cm</i>
                                        </xsl:element>
                                        <xsl:element name="div">
                                            <xsl:attribute name="id">condizione</xsl:attribute>
                                            <h3>Condizione</h3>
                                            <i><xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition"/></i>
                                        </xsl:element>
                                    </xsl:element> 
                                    <!-- FINE - SEZIONE DELLE INFORMAZIONI AGGIUNTIVE -->
                                </xsl:element>  
                            </xsl:element>    
                        </xsl:element>


        <!-- =========================================      62      ========================================================= -->
                
        
        
        
                    <xsl:element name="div">
                        <xsl:attribute name="id"> <xsl:value-of select="/tei:TEI/tei:TEI[2]/@xml:id"/> </xsl:attribute> 
                            <xsl:element name="h1">
                                <xsl:attribute name="class">nomecart</xsl:attribute>
                                <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                            </xsl:element>
                            <xsl:element name="div">
                                <xsl:attribute name="id">settoreimgbutt62</xsl:attribute> 
                                <xsl:element name="div">
                                    <xsl:attribute name="id">img62</xsl:attribute>
                                    
                                    <xsl:element name="div">
                                        <xsl:attribute name="id">c62main</xsl:attribute>
                                        <xsl:element name="img">
                                            <xsl:attribute name="id">c62_brutal_front</xsl:attribute>
                                            <xsl:attribute name="class">c_62_all</xsl:attribute>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_front']/tei:graphic/@url"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="usemap">
                                                <xsl:value-of select="concat('#',/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface/@xml:id)"/>
                                            </xsl:attribute>
                                        </xsl:element>

                                        
                                        <xsl:element name="map">
                                            <xsl:attribute name="name"> 
                                                <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface/@xml:id"/>
                                            </xsl:attribute>
                                        

                                        <!-- TITOLO 62 -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_front']/tei:zone[@xml:id='titolo_62']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_front']/tei:zone[@xml:id='titolo_62']/@ulx"/>,
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_front']/tei:zone[@xml:id='titolo_62']/@uly"/>,
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_front']/tei:zone[@xml:id='titolo_62']/@lrx"/>,
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_front']/tei:zone[@xml:id='titolo_62']/@lry"/>
                                                </xsl:attribute>
                                            </xsl:element>
                                            
                                        <!-- UCCELLO  -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_front']/tei:zone[@xml:id='uccello']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                        
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords">

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_front']/tei:zone[@xml:id='uccello']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_front']/tei:zone[@xml:id='uccello']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_front']/tei:zone[@xml:id='uccello']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_front']/tei:zone[@xml:id='uccello']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>

                                        <!-- MESSAGGIO FRONT -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_fronte']/tei:zone[@xml:id='messaggiofront']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_fronte']/tei:zone[@xml:id='messaggiofront']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_fronte']/tei:zone[@xml:id='messaggiofront']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_fronte']/tei:zone[@xml:id='messaggiofront']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_fronte']/tei:zone[@xml:id='messaggiofront']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>
                                            
                                        <!-- DONNA -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_fronte']/tei:zone[@xml:id='donna']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_fronte']/tei:zone[@xml:id='donna']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_fronte']/tei:zone[@xml:id='donna']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_fronte']/tei:zone[@xml:id='donna']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_fronte']/tei:zone[@xml:id='donna']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>

                                        <!-- AUTORE -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_fronte']/tei:zone[@xml:id='autore']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_fronte']/tei:zone[@xml:id='autore']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_fronte']/tei:zone[@xml:id='autore']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_fronte']/tei:zone[@xml:id='autore']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_fronte']/tei:zone[@xml:id='autore']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>

                                        <!-- SCRITTE -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_fronte']/tei:zone[@xml:id='scritte']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_fronte']/tei:zone[@xml:id='scritte']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_fronte']/tei:zone[@xml:id='scritte']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_fronte']/tei:zone[@xml:id='scritte']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_fronte']/tei:zone[@xml:id='scritte']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>
                                        </xsl:element>

                                    <!--    RETRO CART 62   -->
                                        <xsl:element name="img">
                                            <xsl:attribute name="id">c62_brutal_retro</xsl:attribute>
                                            <xsl:attribute name="class">section_off</xsl:attribute>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:graphic/@url"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="usemap">
                                                <xsl:value-of select="concat('#',/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[2]/@xml:id)"/>
                                            </xsl:attribute>
                                        </xsl:element>

                                        <xsl:element name="map">
                                            <xsl:attribute name="name"> 
                                                <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[2]/@xml:id"/>
                                            </xsl:attribute>

                                        <!-- MESSAGGIO RETRO -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='messaggioretro']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="shape">poly</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='messaggioretro']/@points"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>




                                        <!-- NUMERO CART 62 -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='numerocart62']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='numerocart62']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='numerocart62']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='numerocart62']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='numerocart62']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>

                                        <!-- FRANCOBOLLO -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='francobollo']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='francobollo']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='francobollo']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='francobollo']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='francobollo']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>

                                        <!-- DATA  -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='data']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='data']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='data']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='data']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='data']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>

                                        <!-- COPYRIGHT -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='copyright']/@xml:id"/>
                                                </xsl:attribute>
                                               
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='copyright']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='copyright']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='copyright']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='copyright']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>

                                        <!-- FIRMA -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='firma']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='firma']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='firma']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='firma']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='firma']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>

                                        <!-- DANNI  -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='danni']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='danni']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='danni']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='danni']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='danni']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>
                                        

                                    <!-- ======== INDIRIZZI ========= -->

                                        <!-- Linea indirizzo 1  -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline1']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline1']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline1']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline1']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline1']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>

                                        <!-- Linea indirizzo 2  -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline2']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline2']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline2']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline2']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline2']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>

                                        <!-- Linea indirizzo 3  -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline3']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline3']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline3']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline3']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline3']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>

                                        <!-- Linea indirizzo 4  -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline4']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline4']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline4']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline4']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline4']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>

                                        <!-- Linea indirizzo 5  -->
                                            <xsl:element name="area">
                                                <xsl:attribute name="id">   
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline5']/@xml:id"/>
                                                </xsl:attribute>
                                                
                                                <xsl:attribute name="shape">rect</xsl:attribute>
                                                <xsl:attribute name="coords"> 

                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline5']/@ulx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline5']/@uly"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline5']/@lrx"/>, 
                                                    <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:facsimile/tei:surface[@xml:id='c62_retro']/tei:zone[@xml:id='indline5']/@lry"/>
                                                
                                                </xsl:attribute>
                                            </xsl:element>
                                        </xsl:element>


                                        <xsl:element name="div">
                                            <xsl:attribute name="id">linea</xsl:attribute>  
                                        </xsl:element>
                                        <xsl:element name="div">
                                            <xsl:attribute name="id">sezionedx62</xsl:attribute>
                                            
                                            <xsl:element name="div"> 
                                            <!-- BOTTONI 62-->
                                                <xsl:attribute name="id">buttons62</xsl:attribute>
                                                <xsl:attribute name="class">buttons</xsl:attribute>
                                    
                                                <xsl:element name="button"> <!-- TASTO FRONTE 62 -->
                                                    <xsl:attribute name="id">fronte62</xsl:attribute>
                                                    <xsl:attribute name="type">submit</xsl:attribute>
                                        
                                                    <xsl:attribute name="onclick">switch_fronte_62()</xsl:attribute>
                                                    
                                                    Fronte
                                                </xsl:element>

                                                <xsl:element name="button"> <!-- TASTO RETRO 62 -->
                                                    <xsl:attribute name="id">retro62</xsl:attribute>
                                                    <xsl:attribute name="type">submit</xsl:attribute>
                                        
                                                    <xsl:attribute name="onclick">switch_retro_62()</xsl:attribute>
                                                    
                                                    Retro
                                                </xsl:element>

                                                <xsl:element name="button"> <!-- TASTO ALTRE INFO 62 --> 
                                                    <xsl:attribute name="id">piuinfo62</xsl:attribute>
                                                    <xsl:attribute name="type">submit</xsl:attribute>
                                                    
                                                    <xsl:attribute name="onclick">show_altre_info_62()</xsl:attribute>
                                                    
                                                    Altre informazioni
                                                </xsl:element>

                                            </xsl:element>  
                                            <!-- FINE - BOTTONI 62-->

                                            <xsl:element name="div">
                                                <xsl:attribute name="id">desc_all_62</xsl:attribute>
                                            <!-- ROBA FRONTE 62-->
                                                <xsl:element name="div"> <!-- TITOLO -->
                                                    <xsl:attribute name="class">descelements</xsl:attribute>
                                                    <xsl:attribute name="id">titolo62</xsl:attribute>
                                                    <xsl:element name="h1">TITOLO</xsl:element>
                                                    <xsl:element name="i">
                                                        <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                                                    </xsl:element>
                                                </xsl:element>

                                                <xsl:element name="div"> <!-- ARTISTA -->
                                                    <xsl:attribute name="class">descelements</xsl:attribute>
                                                    <xsl:attribute name="id">art62</xsl:attribute>
                                                    <xsl:element name="h1">ARTISTA</xsl:element>
                                                    <xsl:element name="i">
                                                        <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person/tei:persName[@ref='#M']/tei:surname"/>
                                                    </xsl:element>
                                                </xsl:element>

                                                <xsl:element name="div"> <!-- PRODUTTORE -->
                                                    <xsl:attribute name="class">descelements</xsl:attribute>
                                                    <xsl:attribute name="id">prod62</xsl:attribute>
                                                    <xsl:element name="h1">PRODUTTORE</xsl:element>
                                                    <xsl:element name="i">
                                                        <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:publisher/tei:orgName"/>
                                                    </xsl:element>
                                                </xsl:element>

                                                <xsl:element name="div"> <!-- DESCRIZIONE -->
                                                    <xsl:attribute name="class">descelements</xsl:attribute>
                                                    <xsl:attribute name="id">desc62</xsl:attribute>
                                                    <xsl:element name="h1">DESCRIZIONE</xsl:element>
                                                    <xsl:element name="i">
                                                        <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:text[@xml:id='descimmaginec62']/tei:body/tei:div/tei:figure/tei:figDesc"/>
                                                    </xsl:element>
                                                </xsl:element>

                                                <xsl:element name="div"> <!-- RESOCONTO -->
                                                    <xsl:attribute name="class">descelements</xsl:attribute>
                                                    <xsl:attribute name="id">res62</xsl:attribute>
                                                    <xsl:element name="h1">RESOCONTO</xsl:element>
                                                    <xsl:element name="i">
                                                        Meravigliosa cartolina artistica di tale "Mastroianni",
                                                        <br/>
                                                        che si firma al centro basso dell'opera, raffigurante
                                                        <br/>
                                                        una donna che tende una lettera con una mano
                                                        <br/>
                                                        ad un uccello, mentre con l'altra si sostiene
                                                        <br/>
                                                        delicatamente al corrimano.
                                                        <br/>
                                                        Notiamo che il titolo, in alto a destra, è opposto
                                                        <br/>
                                                        al numero di allegoria del produttore assieme al logo 
                                                        <br/>
                                                        dello stesso, in basso a sinistra.
                                                    </xsl:element>
                                                </xsl:element>

                                            <!-- FINE - FRONTE 62 -->

                                        <!-- ======================================================================== --> 
                                            
                                            <!-- RETRO 62 -->
                                                <xsl:element name="div"> <!-- NOTE -->
                                                <xsl:attribute name="id">nota62</xsl:attribute>
                                                <xsl:attribute name="class">section_off</xsl:attribute>
                                                    <xsl:element name="h1">NOTE</xsl:element>
                                                    <xsl:element name="i">
                                                        <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:teiHeader/tei:fileDesc/tei:notesStmt/tei:note"/>
                                                        <xsl:element name="br"/>
                                                        <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:teiHeader/tei:fileDesc/tei:notesStmt/tei:note[2]"/>
                                                    </xsl:element>
                                                </xsl:element>

                                                <xsl:element name="div"> <!-- TRASCRIZIONE -->
                                                <xsl:attribute name="id">trasc</xsl:attribute>
                                                <xsl:attribute name="class">section_off</xsl:attribute>
                                                    <xsl:element name="h1">TRASCRIZIONE</xsl:element>
                                                    <xsl:element name="i">
                                                        <xsl:element name="h2">METÁ SINISTRA</xsl:element> 
                                                        <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:text[@xml:id='saluti']/tei:body/tei:div/tei:opener"/>
                                                        <br/>
                                                        <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:text[@xml:id='saluti']/tei:body/tei:div/tei:p"/>
                                                        <br/>
                                                        <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:text[@xml:id='saluti']/tei:body/tei:div/tei:closer"/>
                                                        
                                                        <xsl:element name="h2">METÁ DESTRA</xsl:element> 
                                                        <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:text[@xml:id='address62']/tei:body/tei:div/tei:ab/tei:address/tei:addrLine[@facs='#indLine1']"/>
                                                        <br/>
                                                        <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:text[@xml:id='address62']/tei:body/tei:div/tei:ab/tei:address/tei:addrLine[@facs='#indLine2']"/>
                                                        <br/>
                                                        <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:text[@xml:id='address62']/tei:body/tei:div/tei:ab/tei:address/tei:street"/>
                                                    </xsl:element>
                                                </xsl:element>

                                                <xsl:element name="div">  <!-- PERSONAGGI-->
                                                <xsl:attribute name="id">pers</xsl:attribute>
                                                <xsl:attribute name="class">section_off</xsl:attribute>
                                                    <xsl:element name="h1">SOGGETTI</xsl:element>
                                                    <xsl:element name="i">
                                                        Mittente - <xsl:value-of select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person/tei:persName"/>
                                                        <xsl:element name="br"/>
                                                        Ricevente - <xsl:value-of select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person[2]/tei:persName"/>
                                                    </xsl:element>
                                                </xsl:element>

                                                <xsl:element name="div"> <!-- TIMBRI -->
                                                <xsl:attribute name="id">timbri</xsl:attribute>
                                                <xsl:attribute name="class">section_off</xsl:attribute>
                                                    <xsl:element name="h1">TIMBRI</xsl:element>
                                                    <xsl:element name="i">
                                                        1) <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:text[@xml:id='timbrotot']/tei:body/tei:div/tei:div[@xml:id='timbri']/tei:p/tei:stamp/tei:stamp"/>
                                                        <xsl:element name="br"/>
                                                        2) <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:text[@xml:id='timbrotot']/tei:body/tei:div/tei:div[@xml:id='timbri']/tei:p/tei:stamp/tei:stamp[2]"/>
                                                    </xsl:element>                                                                      <!-- ci sta sia ^  questo l'errore -->                 
                                                </xsl:element>

                                                <xsl:element name="div"> <!-- FRANCOBOLLO --> 
                                                <xsl:attribute name="id">franco</xsl:attribute>
                                                <xsl:attribute name="class">section_off</xsl:attribute>
                                                    <xsl:element name="h1">FRANCOBOLLO</xsl:element>
                                                    <xsl:element name="i">
                                                        <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:text[@xml:id='timbrotot']/tei:body/tei:div/tei:div[@xml:id='franco']/tei:p/tei:stamp"/>
                                                    </xsl:element>
                                                </xsl:element>

                                                <xsl:element name="div">  <!-- COPYRIGHT -->
                                                <xsl:attribute name="id">copy</xsl:attribute>
                                                <xsl:attribute name="class">section_off</xsl:attribute>
                                                    <xsl:element name="h1">COPYRIGHT</xsl:element>
                                                    <xsl:element name="i">
                                                        <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:text[@xml:id='timbrotot']/tei:body/tei:div[@type='printed']"/>
                                                    </xsl:element>
                                                </xsl:element>

                                 
                                            <!-- FINE -  RETRO 62 -->
                                            </xsl:element>
                                        </xsl:element>
                                    </xsl:element>
                                    
                                    <!-- SEZIONE DELLE INFORMAZIONI AGGIUNTIVE -->
                                    <xsl:element name="div">
                                        <xsl:attribute name="class">section_off</xsl:attribute>
                                        <xsl:attribute name="id">altre_info_62</xsl:attribute>
                                        <xsl:element name="div">
                                            <xsl:attribute name="id">cod_id</xsl:attribute>
                                            <h3>Codice Identificativo</h3>
                                            <i><xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:idno"/></i>
                                        </xsl:element>
                                        <xsl:element name="div">
                                            <xsl:attribute name="id">contenuto</xsl:attribute>
                                            <h3>Prospetto</h3>
                                            <i><xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:summary"/></i>
                                        </xsl:element>
                                        <xsl:element name="div">
                                            <xsl:attribute name="id">materiale</xsl:attribute>
                                            <h3>Materiale</h3>
                                            <i><xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c33']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:material"/></i>
                                        </xsl:element>
                                        <xsl:element name="div">
                                            <xsl:attribute name="id">dimensioni</xsl:attribute>
                                            <h3>Dimensioni</h3>
                                            <i><xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:dimensions/tei:height"/> x <xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:dimensions/tei:width"/> cm</i>
                                        </xsl:element>
                                        <xsl:element name="div">
                                            <xsl:attribute name="id">condizione</xsl:attribute>
                                            <h3>Condizione</h3>
                                            <i><xsl:value-of select="/tei:TEI/tei:TEI[@xml:id='c62']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition"/></i>
                                        </xsl:element>
                                    </xsl:element> 
                                    <!-- FINE - SEZIONE DELLE INFORMAZIONI AGGIUNTIVE -->
                                </xsl:element>     
                    <!-- chiusure generali della 33 -->     
                            </xsl:element>    
                        </xsl:element>
                    
                <!-- FOOTER   -->
                    <footer> 
                        <div class="info" id="staff" > 
                        
                            <h3>Responsabili progetto:</h3>
                            <xsl:element name="p"> 
                                <strong><xsl:value-of select="//tei:fileDesc[1]/tei:editionStmt[1]//tei:respStmt[1]/tei:resp"/>: </strong>
                                <xsl:value-of select="//tei:fileDesc[1]/tei:editionStmt[1]//tei:respStmt[1]/tei:name"/>
                            </xsl:element>

                            <xsl:element name="p">
                                <strong><xsl:value-of select="//tei:fileDesc[1]/tei:editionStmt[1]//tei:respStmt[2]/tei:resp"/>: </strong>
                                <xsl:value-of select="//tei:fileDesc[1]/tei:editionStmt[1]//tei:respStmt[2]/tei:name"/>
                            </xsl:element>

                            <xsl:element name="p">
                                <strong><xsl:value-of select="//tei:fileDesc[1]/tei:editionStmt[1]//tei:respStmt[3]/tei:resp"/>: </strong>
                                <xsl:value-of select="//tei:fileDesc[1]/tei:editionStmt[1]//tei:respStmt[3]/tei:name"/>
                            </xsl:element>

                            <xsl:element name="p">
                                <strong><xsl:value-of select="//tei:fileDesc[1]/tei:editionStmt[1]//tei:respStmt[4]/tei:resp"/>: </strong>
                                <xsl:value-of select="//tei:fileDesc[1]/tei:editionStmt[1]//tei:respStmt[4]/tei:name"/>
                            </xsl:element>

                        </div>
                        <div class="info" id="datieditoriali">
                            
                            <h3>Dati editoriali:</h3>
                            
                            <xsl:element name="p">
                                <strong>Edizione a cura di: </strong>
                                <xsl:value-of select="//tei:fileDesc/tei:editionStmt//tei:edition"/>
                            </xsl:element>
                            
                            <!--luogo di pubblicazione-->
                            <xsl:element name="p">
                                <strong>Pubblicato presso: </strong>
                                <xsl:value-of select="tei:TEI//tei:fileDesc/tei:publicationStmt/tei:publisher"/>
                                <xsl:value-of select="tei:TEI//tei:fileDesc/tei:publicationStmt/tei:distributor"/>
                            </xsl:element>

                            <xsl:element name="p">
                                <strong><xsl:value-of select="tei:TEI//tei:sourceDesc/tei:bibl/tei:respStmt[1]/tei:resp"/></strong>
                                <xsl:value-of select="tei:TEI//tei:sourceDesc/tei:bibl/tei:respStmt[1]/tei:name"/> 
                            </xsl:element>
                            
                            <xsl:element name="p">
                                <xsl:value-of select="tei:TEI//tei:sourceDesc/tei:bibl/tei:respStmt[2]/tei:resp"/>
                                <xsl:value-of select="tei:TEI//tei:sourceDesc/tei:bibl/tei:respStmt[2]/tei:name"/>
                            </xsl:element>
                        </div>
                    </footer>
                </xsl:element>
            </body> 
        </html>
    </xsl:template> 
</xsl:stylesheet>
