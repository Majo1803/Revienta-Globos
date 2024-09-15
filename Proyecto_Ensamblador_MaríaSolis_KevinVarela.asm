.model large     
.stack
.data
    matriz1 db ' อออออออออออออออออออ','$'               ;variable para definir el borde superior e inferior de la matriz
	matriz2 db 'บ                   บ','$'              ;variable para definir los bordes laterales de la matriz
	matriz3 db ' อออออออออออออออออออออออออออ','$'       ;variable para definir los bordes que indican el jugador que esta jugando
	matriz4 db 'ออออออออ    อออออออออ    อออออ','$'     ;variable para definir los bordes de los botones
	matriz5 db 'บ','$'                                  ;variable para definir los bordes de los botones
    usuario1 db 10,13, 'Inicial del jugador 1: ', '$'   ;variable para preguntar la inicial del jugador1 
    usuario2 db 10,13,10,13,10,13,10,13,10,13,'Inicial del jugador 2: ', '$'   ;variable para preguntar la inicial del jugador2
    signo1 db 10,13,10,13,'Simbolo del globo del jugador 1: ', '$'   ;variable para preguntar el simbolo del jugador1
    signo2 db 10,13,10,13,'Simbolo del globo del jugador 2: ', '$'   ;variable para preguntar el simbolo del jugador2
    msj1 db 'Enter para$'                               ;variable para indicar una instruccion
    msj2 db 'iniciar$'                                  ;variable para indicar una instruccion
    datos db 13,10,'                               Jugador 1:    Puntaje:',13,10,13,10,13,10,'                               Jugador 2:    Puntaje:  ', '$'   ;variable para mostrar los marcadores principales
    opciones db 13,10, '                              Rendirse    Reiniciar    Salir', '$' ;variable para mostrar las posibles opciones a realizar
    nivel1T db 'Nivel 1$'                               ;variable para indicar que se esta jugando el nivel 1 
    nivel2T db 'Nivel 2$'                               ;variable para indicar que se esta jugando el nivel 2   
    jugadorActivo db '<--- Jugador activo$'             ;variable para indicar el jugador que esta jugando
    limpiar    db '          ' ,'$'                     ;variable para limpiar espacios
    limpiar2 db ' ', '$'                                ;variable para limpiar espacios
    limpiar3 db '                            ','$'      ;variable para limpiar espacios
    puntaje1 db 48                                      ;variable que muestra el puntaje del jugador 1
    puntaje2 db 48                                      ;variable que muestra el puntaje del jugador 2
    usuario1_valor db '0$'                              ;variable que guarda la inicial del jugador 1
    usuario2_valor db '0$'                              ;variable que guarda la inicial del jugador 2
    signo1_valor db '0$'                                ;variable que guarda el simbolo del jugador 1
    signo2_valor db '0$'                                ;variable que guarda el simbolo del jugador 2
    cont2 db 0                                          ;variable que se usa como contador para definir el jugador que jugara
    cont4 db 1                                          ;variable que se usa como contador para definir el nivel que se juega
    tiempo db 0                                         ;variable que se usa como temporizador
    numRandom  db 0                                     ;variable que almacena el numero random del eje x
    numRandom1 db 0                                     ;variable que almacena el numero random del eje y
    GX1 db 0                                            ;variable que almacena la coordenada x del globo 1
    GY1 db 0                                            ;variable que almacena la coordenada y del globo 1
    GX2 db 0                                            ;variable que almacena la coordenada x del globo 2
    GY2 db 0                                            ;variable que almacena la coordenada y del globo 2
    GX3 db 0                                            ;variable que almacena la coordenada x del globo 3
    GY3 db 0                                            ;variable que almacena la coordenada y del globo 3
    GX4 db 0                                            ;variable que almacena la coordenada x del globo 4
    GY4 db 0                                            ;variable que almacena la coordenada y del globo 4
    GX5 db 0                                            ;variable que almacena la coordenada x del globo 5
    GY5 db 0                                            ;variable que almacena la coordenada y del globo 5
    GX6 db 0                                            ;variable que almacena la coordenada x del globo 6
    GY6 db 0                                            ;variable que almacena la coordenada y del globo 6
    GX7 db 0                                            ;variable que almacena la coordenada x del globo 7
    GY7 db 0                                            ;variable que almacena la coordenada y del globo 7
    GX8 db 0                                            ;variable que almacena la coordenada x del globo 8
    GY8 db 0                                            ;variable que almacena la coordenada y del globo 8
    GX9 db 0                                            ;variable que almacena la coordenada x del globo 9
    GY9 db 0                                            ;variable que almacena la coordenada y del globo 9
    GX10 db 0                                           ;variable que almacena la coordenada x del globo 10
    GY10 db 0                                           ;variable que almacena la coordenada y del globo 10
    GX11 db 0                                           ;variable que almacena la coordenada x del globo 11
    GY11 db 0                                           ;variable que almacena la coordenada y del globo 11
    GX12 db 0                                           ;variable que almacena la coordenada x del globo 12
    GY12 db 0                                           ;variable que almacena la coordenada y del globo 12
    GX13 db 0                                           ;variable que almacena la coordenada x del globo 13
    GY13 db 0                                           ;variable que almacena la coordenada y del globo 13
    GX14 db 0                                           ;variable que almacena la coordenada x del globo 14
    GY14 db 0                                           ;variable que almacena la coordenada y del globo 14
    GX15 db 0                                           ;variable que almacena la coordenada x del globo 15
    GY15 db 0                                           ;variable que almacena la coordenada y del globo 15
    GX16 db 0                                           ;variable que almacena la coordenada x del globo 16
    GY16 db 0                                           ;variable que almacena la coordenada y del globo 16
    coordenadaX db 0                                    ;variable que almacena la coordenada x del mouse
    coordenadaY db 0                                    ;variable que almacena la coordenada y del mouse
                    
    pantallaPrincipal dw '  ',0ah,0dh                   ;variable para mostrar la pantalla inicial
    
    dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw '             ====================================================',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh                                        
    dw '            ||          *    Revienta Globos Game    *          ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||--------------------------------------------------||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||                   กBienvenido!                   ||',0ah,0dh          
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||            Presione Enter para iniciar           ||',0ah,0dh 
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '             ====================================================',0ah,0dh
    dw '$',0ah,0dh   

     
    pantallaFinal1 dw '  ',0ah,0dh                      ;variable para mostrar la pantalla en caso de que el ganador sea el jugador 1 
    
        dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw '             ====================================================',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh                                        
    dw '            ||               *    Game Over    *                ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||--------------------------------------------------||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||     กFelicidades jugador 1, eres el ganador!     ||',0ah,0dh          
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||          Presione Enter para reiniciar           ||',0ah,0dh 
    dw '            ||                                                  ||',0ah,0dh 
    dw '            ||          Presione espacio para terminar          ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '             ====================================================',0ah,0dh
    dw '$',0ah,0dh
    
    
    pantallaFinal2 dw '  ',0ah,0dh                      ;variable para mostrar la pantalla en caso de que el ganador sea el jugador 2
    
    dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw '             ====================================================',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh                                        
    dw '            ||               *    Game Over    *                ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||--------------------------------------------------||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||     กFelicidades jugador 2, eres el ganador!     ||',0ah,0dh          
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||          Presione Enter para reiniciar           ||',0ah,0dh 
    dw '            ||                                                  ||',0ah,0dh 
    dw '            ||          Presione espacio para terminar          ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '             ====================================================',0ah,0dh
    dw '$',0ah,0dh
    
    pantallaFinal3 dw '  ',0ah,0dh                      ;variable para mostrar la pantalla en caso de que haya empate  
    
        dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw '             ====================================================',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh                                        
    dw '            ||               *    Game Over    *                ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||--------------------------------------------------||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||                    กEmpate!                      ||',0ah,0dh          
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||          Presione Enter para reiniciar           ||',0ah,0dh 
    dw '            ||                                                  ||',0ah,0dh 
    dw '            ||          Presione espacio para terminar          ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh
    dw '             ====================================================',0ah,0dh
    dw '$',0ah,0dh
    
    pantallaFinal4 dw '  ',0ah,0dh                      ;variable para mostrar la pantalla de salida 
    
        dw ' ',0ah,0dh
    dw ' ',0ah,0dh
    dw '             ====================================================',0ah,0dh
    dw '            ||      ***   ***   ***   **** *****  ***   ***     ||',0ah,0dh                                        
    dw '            ||     *     *   * *   * *       *   *   * *        ||',0ah,0dh
    dw '            ||     * **  ****  ***** *       *   *****  ***     ||',0ah,0dh
    dw '            ||     *   * *   * *   * *       *   *   *     *    ||',0ah,0dh
    dw '            ||      ***  *   * *   *  **** ***** *   *  ***     ||',0ah,0dh
    dw '            ||                                                  ||',0ah,0dh                                       
    dw '            ||                  ***   ***   ***                 ||',0ah,0dh
    dw '            ||                 *   * *   * *   *                ||',0ah,0dh
    dw '            ||                 ****  *   * ****                 ||',0ah,0dh
    dw '            ||                 *     *   * *   *                ||',0ah,0dh          
    dw '            ||                 *      ***  *   *                ||',0ah,0dh                                        
    dw '            ||                                                  ||',0ah,0dh
    dw '            ||           ***** *   *  ***   ***   ***           ||',0ah,0dh
    dw '            ||             *   *   * *     *   * *   *          ||',0ah,0dh
    dw '            ||             *   *   * * **  ***** ****           ||',0ah,0dh
    dw '            ||             *   *   * *   * *   * *   *          ||',0ah,0dh
    dw '            ||           ***    ***   ***  *   * *   *          ||',0ah,0dh
    dw '             ====================================================',0ah,0dh
    dw '$',0ah,0dh
    
.code

mov ax,@data
mov ds,ax

;------------------------------MACROS------------------------------
    
    limpiarPantalla macro                               ;esta macro limpia las pantallas.
        mov ah, 0fh
        int 10h
        mov ah, 0
        int 10h
    endm    
         
    imprimirTexto macro texto,y,x                       ;esta macro imprime los textos predeterminados. Recibe el
        mov ah, 02h                                     ;texto que se desea imprimir, la coordenada y y x.
        mov bh, 00d
        mov dh, y                                       ;aqui se indica la coordenada y.
        mov dl, x                                       ;aqui se indica la coordenada x.
        int 10h
               
        mov ah, 9
        lea dx, texto                                   ;aqui se imprime el texto.
        int 21h
    endm     
   
    imprimirPantallas macro pantalla                    ;esta macro imprime las pantallas. Recibe la pantalla que se desea imprimir.
        mov ah,09h
        lea dx, pantalla                                ;aqui se imprime la pantalla.
        int 21h
    endm
    
    imprimirInputs macro texto, variable                ;esta macro solicita la entrada de algun dato. Recibe el texto que 
        mov ah, 09                                      ;indica que se ingrese un dato y la variable en la que se guarda ese dato.
        lea dx, texto                                   ;aqui se imprime el texto.
        int 21h                                         
        
        mov ah, 1
        int 21h  
        mov variable, al                                ;aqui se almacena el dato en la variable.
    endm
         
    imprimirDatos macro variable, y, x                  ;esta macro imprime los datos que son introducidos por el usuario, recibe el dato
        mov ah, 02h                                     ;que va imprimir y las coordenadas.
        mov bh, 00d
        mov dh, y                                       ;aqui se indica la coordenada y.
        mov dl, x                                       ;aqui se indica la coordenada x.
        int 10h
        
        mov ah, 9h
        mov al, variable                                ;aqui se imprime el dato.
        mov bh, 0
        mov bl, 2                                       ;aqui se indica que se imprime con el color verde.
        mov cx, 1  
        int 10h  
    endm
    
    numsRandom macro variable                           ;esta macro genera un numero random. Recibe la variable en la que se guarda 
        mov ah,2Ch                                      ;el numero.
        int 21h 
        mov variable , dl                               ;aqui se guarda en la variable.
        mov al, variable                                ;aqui se mueve a AL el valor de la variable.
    endm

    Y macro fila, nfila, resta, suma                    ;esta macro compara el numero Y de la variable con ciertos numeros, dependiendo del
         cmp al, 26                                     ;valor, se hace cierta accion. Recibe la etiquetas a las que se debe dirigir.
         ja resta
         cmp al, 6
         jb suma
         cmp al,8
         je fila
         cmp al,10
         je fila
         cmp al,12
         je fila
         cmp al,14
         je fila
         cmp al,16
         je fila
         cmp al,18
         je fila
         cmp al,20
         je fila
         cmp al,22
         je fila
         cmp al,24
         je fila
         cmp al,26
         je fila
         dec al                                 
         jmp nfila
 
    endm    
    
    X macro columna, ncolumna, resta, suma              ;esta macro compara el numero X de la variable con ciertos numero, dependiendo del
         cmp al, 20                                     ;valor, se hace cierta accion. Recibe la etiquetas a las que se debe dirigir.
         ja resta
         cmp al, 1                              
         jbe suma 
         cmp al,2                               
         je columna
         cmp al,4
         je columna
         cmp al,6
         je columna
         cmp al,8
         je columna
         cmp al,10
         je columna
         cmp al,12
         je columna
         cmp al,14
         je columna
         cmp al,16
         je columna
         cmp al,18
         je columna
         cmp al,20
         je columna
         dec al                                
         jmp columna
         
    endm
    
    coloresGlobos macro simbolo ,color                  ;esta macro asigna un color al globo. Recibe el simbolo que se imprime y el color.
         mov ah, 9h
         mov al, simbolo                                ;aqui se mueve a AL el simbolo.
         mov bh, 0
         mov bl, color                                  ;aqui se asigna el color.
         mov cx, 1                                 
         int 10h
        
    endm
    
    sonido macro                                        ;esta macro realiza el sonido.
        mov ah,2h
        mov dl,07h
        int 21h 
    endm
    
    calcularMouse macro devolverse1, devolverse2        ;esta macro calcula la posicion del mouse. Recibe dos etiquetas a las que se dirige
        mov ax, 03h                                     ;en caso de que se cumpla una condicion u otra.
        int 33h
        
        cmp bx, 0                                       ;se compara el click con 0, si es 0 es porque no se ha introducido un click
        je  devolverse1                                 ;en caso de ser asi, se devuelve a la etiqueta escrita
        cmp bx, 1                                       ;se compara el click con 1, si es 1 es porque es uso el click izquierdo
        je  devolverse2                                 ;en caso de ser asi, se devuelve a la etiqueta escrita
        cmp bx, 2                                       ;se compara el click con 2, si es 2 es porque es uso el click derecho
        je  devolverse2                                 ;en caso de ser asi, se devuelve a la etiqueta escrita
    endm    
    
    limpiarGlobos macro x, y, volver                    ;esta macro limpia los globos en caso de que se revienten. Recibe las coordenadas
        mov ah, 02h                                     ;y la etiqueta a la que debe saltar.
        mov bh, 00d
        mov dh, y                                       ;aqui se indica la coordenada y
        mov dl, x                                       ;aqui se indica la coordenada x
        int 10h                                         
               
        mov ah, 9
        lea dx, limpiar2                                ;aqui se desaparece el globo
        int 21h
        
        jmp volver                                      ;aqui salta a la etiqueta
    endm
    
    
;------------------------------PANTALLAS PREDETERMINADAS------------------------------      
    
    menuPrincipal:                                      ;en esta seccion se imprimira la pantalla principal
        mov puntaje1, 48                                ;aqui se reinicia el puntaje1 en 0
        mov puntaje2, 48                                ;aqui se reinicia el puntaje2 en 0
        mov cont2, 00h                                  ;aqui se reinicia el cont2 en 0
        mov cont4, 1                                    ;aqui se reinicia el cont4 en 0
        mov tiempo, 00h                                 ;aqui se reinicia el tiempo en 0
        limpiarPantalla                                 ;aqui se limpia la pantalla
        imprimirPantallas pantallaPrincipal             ;aqui se imprime la pantalla principal
        imprimirTexto limpiar2, 23, 79                  ;aqui se espera hasta que el usuario presione enter 
        
        devuelta:                        
            mov ah, 08h                                 
            int 21h
            cmp al, 0dh
            je usuarios                                 ;en caso de que la tecla sea enter, se dirige a usuarios
            jne devuelta                                ;en caso de que la tecla ingresada no sea enter, se vuelve solicitar el enter
   
    usuarios:                                           ;en esta seccion se solicitan los datos principales del usuario
        limpiarPantalla                                 ;aqui se limpia pantalla
        imprimirInputs usuario1, usuario1_valor         ;aqui se le solicita al usuario la inicial del jugador 1
        imprimirInputs signo1, signo1_valor             ;aqui se le solicita al usuario el simbolo del jugador 1
        imprimirInputs usuario2, usuario2_valor         ;aqui se le solicita al usuario la inicial del jugador 2
        imprimirInputs signo2, signo2_valor             ;aqui se le solicita al usuario el simbolo del jugador 2
        jmp nivel1                                      ;aqui se salta al nivel 1
                        
    pantFinal1:                                         ;en esta seccion se imprime que gano el jugador 1
        mov puntaje1, 48                                ;aqui se reinicia el puntaje1 en 0
        mov puntaje2, 48                                ;aqui se reinicia el puntaje2 en 0
        mov cont2, 00h                                  ;aqui se reinicia el cont2 en 0
        mov cont4, 1                                    ;aqui se reinicia el cont4 en 0
        mov tiempo, 00h                                 ;aqui se reinicia el tiempo en 0
            
        limpiarPantalla                                 ;aqui se limpia la pantalla
        imprimirPantallas pantallaFinal1                ;aqui se imprime la pantalla de ganador
        imprimirTexto limpiar2, 23, 79                  ;aqui se espera hasta que el usuario presione enter o espacio
        mov ah, 08h
        int 21h
        cmp al, 0dh
        je menuPrincipal                                ;en caso de que la tecla sea enter, se reinicia
        cmp al, 20h
        je pantFinal4                                   ;en caso de que la tecla sea espacio, se dirige a la pantalla de salida
                
    pantFinal2:                                         ;en esta seccion se imprime que gano el jugador 2
        mov puntaje1, 48                                ;aqui se reinicia el puntaje1 en 0
        mov puntaje2, 48                                ;aqui se reinicia el puntaje2 en 0
        mov cont2, 00h                                  ;aqui se reinicia el cont2 en 0
        mov cont4, 1                                    ;aqui se reinicia el cont4 en 0
        mov tiempo, 00h                                 ;aqui se reinicia el tiempo en 0
            
        limpiarPantalla                                 ;aqui se limpia la pantalla   
        imprimirPantallas pantallaFinal2                ;aqui se imprime la pantalla de ganador
        imprimirTexto limpiar2, 23, 79                  ;aqui se espera hasta que el usuario presione enter o espacio
        mov ah, 08h
        int 21h
        cmp al, 0dh
        je menuPrincipal                                ;en caso de que la tecla sea enter, se reinicia
        cmp al, 20h
        je pantFinal4                                   ;en caso de que la tecla sea espacio, se dirige a la pantalla de salida    
    
    pantFinal3:                                         ;en esta seccion se imprime que hubo empate
        mov puntaje1, 48                                ;aqui se reinicia el puntaje1 en 0
        mov puntaje2, 48                                ;aqui se reinicia el puntaje2 en 0
        mov cont2, 00h                                  ;aqui se reinicia el cont2 en 0
        mov cont4, 1                                    ;aqui se reinicia el cont4 en 0
        mov tiempo, 00h                                 ;aqui se reinicia el tiempo en 0
            
        limpiarPantalla                                 ;aqui se limpia la pantalla   
        imprimirPantallas pantallaFinal3                ;aqui se imprime la pantalla de  empate
        imprimirTexto limpiar2, 23, 79                  ;aqui se espera hasta que el usuario presione enter o espacio
        mov ah, 08h
        int 21h
        cmp al, 0dh
        je menuPrincipal                                ;en caso de que la tecla sea enter, se reinicia
        cmp al, 20h
        je pantFinal4                                   ;en caso de que la tecla sea espacio, se dirige a la pantalla de salida 
    
    pantFinal4:                                         ;en esta seccion se imprime la pantalla de agradecimiento y salida
            
        limpiarPantalla                                 ;aqui se limpia la pantalla   
        imprimirPantallas pantallaFinal4                ;aqui se imprime la pantalla de agradecimiento y salida
        jmp salir                                       ;se salta a la etiqueta salir 
        
;------------------------------PANTALLA DE JUEGO------------------------------    
              
   nivel1:                                              ;aqui comienza la pantalla de juego
        pantallaJuego:
                                                        ;aqui se invoca la macro que limpia la pantalla
            limpiarPantalla    
                                                        
            imprimirTexto datos, 2, 1                   ;aqui se imprimen los textos predeterminados 
            imprimirTexto opciones, 20, 1               ;aqui se imprimen las opciones extras
            imprimirDatos usuario1_valor, 3, 42         ;aqui se imprimen la inicial del jugador1
            imprimirDatos usuario2_valor, 6, 42         ;aqui se imprimen la inicial del jugador2
            imprimirDatos puntaje1, 3, 54               ;aqui se imprimen el puntaje del jugador1
            imprimirDatos puntaje2, 6, 54               ;aqui se imprimen el puntaje del jugador2
            imprimirTexto matriz4, 20, 30               ;aqui se empiezan a imprimir los bordes de la matriz
            imprimirTexto matriz4, 22, 30
            imprimirTexto matriz5, 21, 29
            imprimirTexto matriz5, 21, 38
            imprimirTexto matriz5, 21, 41
            imprimirTexto matriz5, 21, 51
            imprimirTexto matriz5, 21, 54
            imprimirTexto matriz5, 21, 60                   
            imprimirTexto matriz1,1,7
            imprimirTexto matriz2,2,7
            imprimirTexto matriz2,3,7
            imprimirTexto matriz2,4,7
            imprimirTexto matriz2,5,7
            imprimirTexto matriz2,6,7
            imprimirTexto matriz2,7,7
            imprimirTexto matriz2,8,7
            imprimirTexto matriz2,9,7
            imprimirTexto matriz2,10,7
            imprimirTexto matriz2,11,7  
            imprimirTexto matriz2,12,7
            imprimirTexto matriz2,13,7
            imprimirTexto matriz2,14,7
            imprimirTexto matriz2,15,7
            imprimirTexto matriz2,16,7
            imprimirTexto matriz2,17,7
            imprimirTexto matriz2,18,7
            imprimirTexto matriz2,19,7
            imprimirTexto matriz2,20,7
            imprimirTexto matriz2,21,7
            imprimirTexto matriz1,22,7                  ;aqui se deja de imprimir los bordes de la matriz
            imprimirTexto nivel1T,0,14                  ;aqui se imprime el texto del nivel 1
            imprimirTexto matriz3,2,28                  ;aqui se imprime un borde alrededor del jugador que juega 
            imprimirTexto matriz3,4,28                  
            imprimirTexto jugadorActivo, 3,57           ;aqui se imprime el texto que indica el jugador que juega
            imprimirTexto msj1,9,12                     ;aqui se imprime el texto con la instruccion
            imprimirTexto msj2,10,14
            imprimirTexto limpiar2, 23, 79              ;aqui se espera a que el usuario presione enter
                        
            estatico:
                mov ah, 08h
                int 21h
                cmp al, 0dh
                je limpiarTexto                         ;en caso de que la tecla sea enter, se dirige a limpiar el texto de la instruccion
                jmp estatico                            ;en caso de que la tecla sea diferente, se vuelve a solicitar 
                                                
            limpiarTexto:
                imprimirTexto limpiar, 9,12             ;aqui limpia el texto
                imprimirTexto limpiar, 10,12            ;aqui limpia el texto                           
            
;------------------------------JUGADOR 1------------------------------

            jugador1:                                    ;aqui se inicia con el juego
                inicioNivel1J1:
                    
                    globo1J1 macro simboloJugador        ;esta macro genera el globo1. Recibe el simbolo que imprimira
                        
                        numsRandom numRandom             ;aqui se genera un numero random para la coordenada X
                            
                        GY1filaJ1:  
                            Y Y1filaJ1, GY1filaJ1, Y1restaFilaJ1, Y1sumaFilaJ1  ;aqui se compara el numero random  
                                       
                            Y1restaFilaJ1:               ;aqui se resta al numero random dependiendo de la condicion
                                sub al,17                               
                                jmp GY1filaJ1
                                
                            Y1sumaFilaJ1:                ;aqui se suma al numero random dependiendo de la condicion
                                add al,7                                
                                jmp GY1filaJ1
                            
                            Y1filaJ1:                    ;aqui se asgina a la variable del globo1 en la coordenada X el valor del numero random
                                mov GX1, al
                                                    
                        numsRandom numRandom1            ;aqui se genera un numero random para la coordenada Y                           
                             
                        GX1columnaJ1:
                            X X1columnaJ1, GX1columnaJ1, X1restaColumJ1, X1sumaColumJ1   ;aqui se compara el numero random         
                            
                            X1restaColumJ1:              ;aqui se resta al numero random dependiendo de la condicion
                                sub al, 20                                           
                                jmp GX1columnaJ1
                            
                            X1sumaColumJ1:               ;aqui se suma al numero random dependiendo de la condicion
                                add al,7                                             
                                jmp GX1columnaJ1           
                                     
                            X1columnaJ1:                 ;aqui se asigna a la variable del globo1 en la coordenada Y el valor del numero random
                                mov GY1,al                                            
                            
                            mov ah, 02h
                            mov bh, 00d
                            mov dh, GY1                  ;aqui se mueve a DH el valor de GY1, el cual es la coordenada Y
                            mov dl, GX1                  ;aqui se mueve a DL el valor de GX1, el cual es la coordenada X
                            int 10h 
                            
                            coloresGlobos simboloJugador, 3      ;aqui se asigna el color del globo 
                    endm 
                    
                    globo2J1 macro simboloJugador        ;esta macro genera el globo2. Recibe el simbolo que imprimira
                        
                        numsRandom numRandom             ;aqui se genera un numero random para la coordenada X
                            
                        GY2filaJ1:  
                            Y Y2filaJ1, GY2filaJ1, Y2restaFilaJ1, Y2sumaFilaJ1    ;aqui se compara el numero random
                                       
                            Y2restaFilaJ1:               ;aqui se resta al numero random dependiendo de la condicion
                                sub al,17                               
                                jmp GY2filaJ1
                                
                            Y2sumaFilaJ1:                ;aqui se suma al numero random dependiendo de la condicion
                                add al,7                                
                                jmp GY2filaJ1
                            
                            Y2filaJ1:                    ;aqui se asgina a la variable del globo2 en la coordenada X el valor del numero random
                                mov GX2, al
                                                    
                        numsRandom numRandom1            ;aqui se genera un numero random para la coordenada Y                            
                             
                        GX2columnaJ1:
                            X X2columnaJ1, GX2columnaJ1, X2restaColumJ1, X2sumaColumJ1    ;aqui se compara el numero random      
                            
                            X2restaColumJ1:              ;aqui se resta al numero random dependiendo de la condicion
                                sub al, 20                                           
                                jmp GX2columnaJ1
                            
                            X2sumaColumJ1:               ;aqui se suma al numero random dependiendo de la condicion
                                add al,7                                             
                                jmp GX2columnaJ1           
                                     
                            X2columnaJ1:                 ;aqui se asgina a la variable del globo2 en la coordenada Y el valor del numero random
                                mov GY2,al                                            
                            
                            mov ah, 02h
                            mov bh, 00d
                            mov dh, GY2                  ;aqui se mueve a DH el valor de GY2, el cual es la coordenada Y
                            mov dl, GX2                  ;aqui se mueve a DL el valor de GX2, el cual es la coordenada X
                            int 10h 
                            
                            coloresGlobos simboloJugador, 4      ;aqui se asigna el color del globo
    
                    endm
                    
                    globo3J1 macro simboloJugador        ;esta macro genera el globo3. Recibe el simbolo que imprimira
                        
                        numsRandom numRandom             ;aqui se genera un numero random para la coordenada X
                            
                        GY3filaJ1:  
                            Y Y3filaJ1, GY3filaJ1, Y3restaFilaJ1, Y3sumaFilaJ1   ;aqui se compara el numero random 
                                       
                            Y3restaFilaJ1:               ;aqui se resta al numero random dependiendo de la condicion
                                sub al,17                               
                                jmp GY3filaJ1
                               
                            Y3sumaFilaJ1:                ;aqui se suma al numero random dependienod de la condicion
                                add al,7                                
                                jmp GY3filaJ1
                            
                            Y3filaJ1:                    ;aqui se asgina a la variable del globo3 en la coordenada X el valor del numero random
                                mov GX3, al
                                                    
                        numsRandom numRandom1            ;aqui se genera un numero random para la coordenada Y                            
                             
                        GX3columnaJ1:
                            X X3columnaJ1, GX3columnaJ1, X3restaColumJ1, X3sumaColumJ1   ;aqui se compara el numero random       
                            
                            X3restaColumJ1:              ;aqui se resta al numero random dependiendo de la condicion
                                sub al, 20                                           
                                jmp GX3columnaJ1
                            
                            X3sumaColumJ1:               ;aqui se suma al numero random dependienod de la condicion
                                add al,7                                             
                                jmp GX3columnaJ1           
                                     
                            X3columnaJ1:                 ;aqui se asgina a la variable del globo3 en la coordenada Y el valor del numero random
                                mov GY3,al                                            
                            
                            mov ah, 02h
                            mov bh, 00d
                            mov dh, GY3                  ;aqui se mueve a DH el valor de GY3, el cual es la coordenada Y
                            mov dl, GX3                  ;aqui se mueve a DL el valor de GX3, el cual es la coordenada X
                            int 10h 
                            
                            coloresGlobos simboloJugador, 13     ;aqui se imprime asigna el color del globo
                    endm
                    
                    globo4J1 macro simboloJugador        ;esta macro genera el globo4. Recibe el simbolo que imprimira
                        
                        numsRandom numRandom             ;aqui se genera un numero random para la coordenada X
                            
                        GY4filaJ1:  
                            Y Y4filaJ1, GY4filaJ1, Y4restaFilaJ1, Y4sumaFilaJ1    ;aqui se compara el numero random
                                       
                            Y4restaFilaJ1:               ;aqui se resta al numero random dependiendo de la condicion
                                sub al,17                               
                                jmp GY4filaJ1
                                
                            Y4sumaFilaJ1:                ;aqui se suma al numero random dependienod de la condicion
                                add al,7                                
                                jmp GY4filaJ1
                            
                            Y4filaJ1:                    ;aqui se asgina a la variable del globo4 en la coordenada X el valor del numero random
                                mov GX4, al
                                                    
                        numsRandom numRandom1            ;aqui se genera un numero random para la coordenada Y                            
                             
                        GX4columnaJ1:
                            X X4columnaJ1, GX4columnaJ1, X4restaColumJ1, X4sumaColumJ1    ;aqui se compara el numero random      
                            
                            X4restaColumJ1:              ;aqui se resta al numero random dependiendo de la condicion
                                sub al, 20                                           
                                jmp GX4columnaJ1
                            
                            X4sumaColumJ1:               ;aqui se suma al numero random dependienod de la condicion
                                add al,7                                             
                                jmp GX4columnaJ1           
                                     
                            X4columnaJ1:                 ;aqui se asgina a la variable del globo4 en la coordenada Y el valor del numero random
                                mov GY4,al                                            
                            
                            mov ah, 02h
                            mov bh, 00d
                            mov dh, GY4                  ;aqui se mueve a DH el valor de GY4, el cual es la coordenada Y
                            mov dl, GX4                  ;aqui se mueve a DL el valor de GX4, el cual es la coordenada X
                            int 10h 
                            
                            coloresGlobos simboloJugador, 11    ;aqui se asigna el color del globo
                    endm
                    
                    globo5J1 macro simboloJugador        ;esta macro genera el globo5. Recibe el simbolo que imprimira
                        
                        numsRandom numRandom             ;aqui se genera un numero random para la coordenada X
                            
                        GY5filaJ1:  
                            Y Y5filaJ1, GY5filaJ1, Y5restaFilaJ1, Y5sumaFilaJ1  ;aqui se compara el numero random  
                                       
                            Y5restaFilaJ1:               ;aqui se resta al numero random dependiendo de la condicion
                                sub al,17                               
                                jmp GY5filaJ1
                               
                            Y5sumaFilaJ1:                ;aqui se suma al numero random dependienod de la condicion
                                add al,7                                
                                jmp GY5filaJ1
                            
                            Y5filaJ1:                    ;aqui se asgina a la variable del globo5 en la coordenada X el valor del numero random
                                mov GX5, al
                                                    
                        numsRandom numRandom1            ;aqui se genera un numero random para la coordenada Y                            
                             
                        GX5columnaJ1:
                            X X5columnaJ1, GX5columnaJ1, X5restaColumJ1, X5sumaColumJ1    ;aqui se compara el numero random      
                            
                            X5restaColumJ1:              ;aqui se resta al numero random dependiendo de la condicion
                                sub al, 20                                           
                                jmp GX5columnaJ1
                            
                            X5sumaColumJ1:               ;aqui se suma al numero random dependienod de la condicion
                                add al,7                                             
                                jmp GX5columnaJ1           
                                     
                            X5columnaJ1:                 ;aqui se asgina a la variable del globo5 en la coordenada Y el valor del numero random
                                mov GY5,al                                            
                            
                            mov ah, 02h
                            mov bh, 00d
                            mov dh, GY5                  ;aqui se mueve a DH el valor de GY5, el cual es la coordenada Y
                            mov dl, GX5                  ;aqui se mueve a DL el valor de GX5, el cual es la coordenada X
                            int 10h 
                            
                            coloresGlobos simboloJugador, 7      ;aqui se asigna el color del globo
                    endm
                    
                    globo6J1 macro simboloJugador        ;esta macro genera el globo6. Recibe el simbolo que imprimira
                        
                        numsRandom numRandom             ;aqui se genera un numero random para la coordenada X
                            
                        GY6filaJ1:  
                            Y Y6filaJ1, GY6filaJ1, Y6restaFilaJ1, Y6sumaFilaJ1    ;aqui se compara el numero random
                                       
                            Y6restaFilaJ1:               ;aqui se resta al numero random dependiendo de la condicion
                                sub al,17                               
                                jmp GY6filaJ1
                                
                            Y6sumaFilaJ1:                ;aqui se suma al numero random dependienod de la condicion
                                add al,7                                
                                jmp GY6filaJ1
                            
                            Y6filaJ1:                    ;aqui se asgina a la variable del globo6 en la coordenada X el valor del numero random
                                mov GX6, al
                                                    
                        numsRandom numRandom1            ;aqui se genera un numero random para la coordenada Y                            
                             
                        GX6columnaJ1:
                            X X6columnaJ1, GX6columnaJ1, X6restaColumJ1, X6sumaColumJ1   ;aqui se compara el numero random        
                            
                            X6restaColumJ1:              ;aqui se resta al numero random dependiendo de la condicion
                                sub al, 20                                           
                                jmp GX6columnaJ1
                            
                            X6sumaColumJ1:               ;aqui se suma al numero random dependienod de la condicion
                                add al,7                                             
                                jmp GX6columnaJ1           
                                     
                            X6columnaJ1:                 ;aqui se asgina a la variable del globo6 en la coordenada Y el valor del numero random
                                mov GY6,al                                            
                            
                            mov ah, 02h
                            mov bh, 00d
                            mov dh, GY6                  ;aqui se mueve a DH el valor de GY6, el cual es la coordenada y
                            mov dl, GX6                  ;aqui se mueve a DL el valor de GX6, el cual es la coordenada x
                            int 10h 
                            
                            coloresGlobos simboloJugador, 9    ;aqui se asigna el color del globo
                    endm 
                    
                    globo7J1 macro simboloJugador        ;esta macro genera el globo7. Recibe el simbolo que imprimira
                        
                        numsRandom numRandom             ;aqui se genera un numero random para la coordenada X
                            
                        GY7filaJ1:  
                            Y Y7filaJ1, GY7filaJ1, Y7restaFilaJ1, Y7sumaFilaJ1  ;aqui se compara el numero random  
                                       
                            Y7restaFilaJ1:               ;aqui se resta al numero random dependiendo de la condicion
                                sub al,17                               
                                jmp GY7filaJ1
                                
                            Y7sumaFilaJ1:                ;aqui se suma al numero random dependienod de la condicion
                                add al,7                                
                                jmp GY7filaJ1
                            
                            Y7filaJ1:                    ;aqui se asgina a la variable del globo7 en la coordenada X el valor del numero random
                                mov GX7, al
                                                    
                        numsRandom numRandom1            ;aqui se genera un numero random para la coordenada Y                             
                             
                        GX7columnaJ1:
                            X X7columnaJ1, GX7columnaJ1, X7restaColumJ1, X7sumaColumJ1  ;aqui se compara el numero random        
                            
                            X7restaColumJ1:              ;aqui se resta al numero random dependiendo de la condicion
                                sub al, 20                                           
                                jmp GX7columnaJ1
                            
                            X7sumaColumJ1:               ;aqui se suma al numero random dependienod de la condicion
                                add al,7                                             
                                jmp GX7columnaJ1           
                                     
                            X7columnaJ1:                 ;aqui se asgina a la variable del globo7 en la coordenada Y el valor del numero random
                                mov GY7,al                                            
                            
                            mov ah, 02h
                            mov bh, 00d                  ;aqui se mueve a DH el valor de GY7, el cual es la coordenada Y
                            mov dh, GY7                  ;aqui se mueve a DL el valor de GX7, el cual es la coordenada X
                            mov dl, GX7 
                            int 10h 
                            
                            coloresGlobos simboloJugador, 10    ;aqui se asigna el color del globo
    
                    endm
                    
                    globo8J1 macro simboloJugador        ;esta macro genera el globo8. Recibe el simbolo que imprimira
                        
                        numsRandom numRandom             ;aqui se genera un numero random para la coordenada X
                            
                        GY8filaJ1:  
                            Y Y8filaJ1, GY8filaJ1, Y8restaFilaJ1, Y8sumaFilaJ1   ;aqui se compara el numero random 
                                       
                            Y8restaFilaJ1:               ;aqui se resta al numero random dependiendo de la condicion
                                sub al,17                               
                                jmp GY8filaJ1
                               
                            Y8sumaFilaJ1:                ;aqui se suma al numero random dependienod de la condicion
                                add al,7                                
                                jmp GY8filaJ1
                            
                            Y8filaJ1:                    ;aqui se asgina a la variable del globo8 en la coordenada X el valor del numero random
                                mov GX8, al
                                                    
                        numsRandom numRandom1            ;aqui se genera un numero random para la coordenada Y                            
                             
                        GX8columnaJ1:
                            X X8columnaJ1, GX8columnaJ1, X8restaColumJ1, X8sumaColumJ1   ;aqui se compara el numero random       
                            
                            X8restaColumJ1:              ;aqui se resta al numero random dependiendo de la condicion
                                sub al, 20                                           
                                jmp GX8columnaJ1
                            
                            X8sumaColumJ1:               ;aqui se suma al numero random dependienod de la condicion
                                add al,7                                             
                                jmp GX8columnaJ1           
                                     
                            X8columnaJ1:                 ;aqui se asgina a la variable del globo8 en la coordenada Y el valor del numero random
                                mov GY8,al                                            
                            
                            mov ah, 02h
                            mov bh, 00d
                            mov dh, GY8                  ;aqui se mueve a DH el valor de GY8, el cual es la coordenada Y
                            mov dl, GX8                  ;aqui se mueve a DL el valor de GX8, el cual es la coordenada X
                            int 10h 
                            
                            coloresGlobos simboloJugador, 14    ;aqui se asigna el color del globo
                    endm
                    
                    cmp cont2, 2                         ;compara cont2 con 2
                    je jugador2                          ;si es igual a 2, salta para que juegue el jugador2 
                    inc cont2                            ;si no es igual, incrementa cont2
                    globosNivel1:                        ;estos globos forman parte del nivel 1 y 2
                        globo1J1 signo1_valor            ;aqui se imprime el globo1
                        globo2J1 signo1_valor            ;aqui se imprime el globo2
                        globo3J1 signo1_valor            ;aqui se imprime el globo3
                        globo4J1 signo1_valor            ;aqui se imprime el globo4
                        globo5J1 signo1_valor            ;aqui se imprime el globo5
                        cmp cont4, 2                     ;compara cont4 con 2
                        jl click                         ;si es menor, salta a click
                        je globosNivel2                  ;si es igual, salta al nivel 2 
                        
                    globosNivel2:                        ;estos globos forman parte del nivel 2
                        globo6J1 signo1_valor            ;se imprime el globo6
                        globo7J1 signo1_valor            ;se imprime el globo7
                        globo8J1 signo1_valor            ;se imprime el globo8
                        
                    click:                               ;durante esta seccion se verifica la posicion del mouse para reventar los globos 
                        cmp tiempo, 30                   ;aqui se compara el tiempo con 30
                        jle continuar                    ;en caso de ser menor o igual, el tiempo corre
                        jge cambiarNivel                 ;en caso de ser mayor o igual, se cambia al nivel 2
                            cambiarNivel:                           ;en esta seccion se cambia al nivel 2
                                imprimirTexto limpiar2, GY1,GX1     ;aqui se emoiezan a limpiar los globos que no fueron reventados
                                imprimirTexto limpiar2, GY2,GX2 
                                imprimirTexto limpiar2, GY3,GX3
                                imprimirTexto limpiar2, GY4,GX4
                                imprimirTexto limpiar2, GY5,GX5
                                imprimirTexto limpiar2, GY6,GX6
                                imprimirTexto limpiar2, GY7,GX7
                                imprimirTexto limpiar2, GY8,GX8
                                imprimirTexto limpiar, 0, 14        ;aqui se limpia limpia el texto que indica el nivel 1
                                imprimirTexto nivel2T,0,14          ;aqui se imprime el texto que indica el nivel 2
                                inc cont4                           ;se incrementa cont4
                                mov tiempo, 00h                     ;se reinicia el tiempo para el nivel 2
                                jmp jugador1                        ;se salta a jugador1 para empezar el proceso de imprimir los globos
                                 
                        continuar:                                  ;en esta seccion corre el tiempo
                        inc tiempo                                  ;incrementa el tiempo
                        calcularMouse click, coordenadas            ;aqui se calcula la posicion del mouse
                        
                    coordenadas:                                    ;en esta seccion se consiguen las coordenadas X y Y
                        mov ax, cx  
                        mov bl,8   
                        div bl                                      ;aqui se divide la coordenada X por 8 para asi conseguir el valor final
                        mov coordenadaX, al                         ;aqui se asigna el valor de la division a la variable  
                        
                        mov ax, dx  
                        mov bl,8   
                        div bl                                      ;aqui se divide la coordenada Y por 8 para asi conseguir el valor final
                        mov coordenadaY, al                         ;aqui se asigna el valor de la division a la variable  
                     
                    compararX1J1:                                   ;en esta seccion se compara que la coordenada X del mouse coincide con el globo1
                        mov cl, GX1                                 ;aqui se asigna a CL la coordenada X del globo1 
                        cmp cl, coordenadaX                         ;aqui se compara CL con el valor de la coordenada X del mouse
                        je verificar1                               ;si es igual, salta a la segunda verificacion
                        jne compararX2J1                            ;si es diferente, salta a hacer la comparacion con el globo2
                            verificar1:                             ;en esta seccion se compara que la coordenada Y del mouse coincide con el globo1 
                                mov cl, GY1                         ;aqui se asigna a CL la coordenada Y del globo1 
                                cmp cl, coordenadaY                 ;aqui se compara CL con el valor de la coordenada Y del mouse
                                je compararY1                       ;si es igual, se salta al paso final 
                    
                    compararX2J1:                                   ;en esta seccion se compara que la coordenada X del mouse coincide con el globo2
                        mov cl, GX2                                 ;aqui se asigna a CL la coordenada X del globo2 
                        cmp cl, coordenadaX                         ;aqui se compara CL con el valor de la coordenada X del mouse
                        je verificar2                               ;si es igual, salta a la segunda verificacion
                        jne compararX3J1                            ;si es diferente, salta a hacer la comparacion con el globo3
                            verificar2:                             ;en esta seccion se compara que la coordenada Y del mouse coincide con el globo2
                                mov cl, GY2                         ;aqui se asigna a CL la coordenada Y del globo2
                                cmp cl, coordenadaY                 ;aqui se compara CL con el valor de la coordenada Y del mouse
                                je compararY2                       ;si es igual, se salta al paso final
                                
                    compararX3J1:                                   ;en esta seccion se compara que la coordenada X del mouse coincide con el globo3
                        mov cl, GX3                                 ;aqui se asigna a CL la coordenada X del globo3 
                        cmp cl, coordenadaX                         ;aqui se compara CL con el valor de la coordenada X del mouse
                        je verificar3                               ;si es igual, salta a la segunda verificacion
                        jne compararX4J1                            ;si es diferente, salta a hacer la comparacion con el globo4
                            verificar3:                             ;en esta seccion se compara que la coordenada Y del mouse coincide con el globo3
                                mov cl, GY3                         ;aqui se asigna a CL la coordenada Y del globo2 
                                cmp cl, coordenadaY                 ;aqui se compara CL con el valor de la coordenada Y del mouse
                                je compararY3                       ;si es igual, se salta al paso final
                                
                    compararX4J1:                                   ;en esta seccion se compara que la coordenada X del mouse coincide con el globo4
                        mov cl, GX4                                 ;aqui se asigna a CL la coordenada X del globo4 
                        cmp cl, coordenadaX                         ;aqui se compara CL con el valor de la coordenada X del mouse
                        je verificar4                               ;si es igual, salta a la segunda verificacio
                        jne compararX5J1                            ;si es diferente, salta a hacer la comparacion con el globo5
                            verificar4:                             ;en esta seccion se compara que la coordenada Y del mouse coincide con el globo4
                                mov cl, GY4                         ;aqui se asigna a CL la coordenada Y del globo2 
                                cmp cl, coordenadaY                 ;aqui se compara CL con el valor de la coordenada Y del mouse
                                je compararY4                       ;si es igual, se salta al paso final
                                
                    compararX5J1:                                   ;en esta seccion se compara que la coordenada X del mouse coincide con el globo5
                        mov cl, GX5                                 ;aqui se asigna a CL la coordenada X del globo5 
                        cmp cl, coordenadaX                         ;aqui se compara CL con el valor de la coordenada X del mouse
                        je verificar5                               ;si es igual, salta a la segunda verificacion
                        jne compararX6J1                            ;si es diferente, salta a hacer la comparacion con el globo6
                            verificar5:                             ;en esta seccion se compara que la coordenada Y del mouse coincide con el globo5
                                mov cl, GY5                         ;aqui se asigna a CL la coordenada Y del globo2
                                cmp cl, coordenadaY                 ;aqui se compara CL con el valor de la coordenada Y del mouse
                                je compararY5                       ;si es igual, se salta al paso final
                                
                    compararX6J1:                                   ;en esta seccion se compara que la coordenada X del mouse coincide con el globo6
                        mov cl, GX6                                 ;aqui se asigna a CL la coordenada X del globo6
                        cmp cl, coordenadaX                         ;aqui se compara CL con el valor de la coordenada X del mouse
                        je verificar6                               ;si es igual, salta a la segunda verificacion
                        jne compararX7J1                            ;si es diferente, salta a hacer la comparacion con el globo7
                            verificar6:                             ;en esta seccion se compara que la coordenada Y del mouse coincide con el globo6
                                mov cl, GY6                         ;aqui se asigna a CL la coordenada Y del globo2 
                                cmp cl, coordenadaY                 ;aqui se compara CL con el valor de la coordenada Y del mouse
                                je compararY6                       ;si es igual, se salta al paso final
                                
                    compararX7J1:                                   ;en esta seccion se compara que la coordenada X del mouse coincide con el globo7
                        mov cl, GX7                                 ;aqui se asigna a CL la coordenada X del globo7
                        cmp cl, coordenadaX                         ;aqui se compara CL con el valor de la coordenada X del mouse
                        je verificar7                               ;si es igual, salta a la segunda verificacion
                        jne compararX8J1                            ;si es diferente, salta a hacer la comparacion con el globo8
                            verificar7:                             ;en esta seccion se compara que la coordenada Y del mouse coincide con el globo7
                                mov cl, GY7                         ;aqui se asigna a CL la coordenada Y del globo2 
                                cmp cl, coordenadaY                 ;aqui se compara CL con el valor de la coordenada Y del mouse
                                je compararY7                       ;si es igual, se salta al paso final
                                 
                    compararX8J1:                                   ;en esta seccion se compara que la coordenada X del mouse coincide con el globo8
                        mov cl, GX8                                 ;aqui se asigna a CL la coordenada X del globo8
                        cmp cl, coordenadaX                         ;aqui se compara CL con el valor de la coordenada X del mouse
                        je verificar8                               ;si es igual, salta a la segunda verificacion
                        jne compararRendirseJ1                      ;si es diferente, salta a hacer la comparacion con el el boton de rendirse
                            verificar8:                             ;en esta seccion se compara que la coordenada Y del mouse coincide con el globo8
                                mov cl, GY8                         ;aqui se asigna a CL la coordenada Y del globo2 
                                cmp cl, coordenadaY                 ;aqui se compara CL con el valor de la coordenada Y del mouse
                                je compararY8                       ;si es igual, se salta al paso final
                                
                    compararRendirseJ1:                             ;en esta seccion se compara que la coordenada X del mouse coincide con el boton de rendirse
                        mov cl, coordenadaX                         ;aqui se asigna a CL la coordenada X del mouse
                        cmp cl, 30                                  ;aqui se compara CL con 30
                        jge compRen1                                ;si es igual, salta a la segunda verificacion
                        jne compararReiniciarJ1                     ;si es diferente, salta a hacer la comparacion con el boton de reiniciar
                             compRen1:                              ;en esta seccion se compara que la coordenada Y del mouse coincide con el boton de rendirse
                                cmp cl, 37                          ;aqui se compara CL con 37
                                jle compararYRendirse               ;si es menor, se salta al paso final
                                jne compararReiniciarJ1             ;si es diferente, se salta a comparar con el boton de reiniciar
                                
                    compararReiniciarJ1:                            ;en esta seccion se compara que la coordenada X del mouse coincide con el boton de reiniciar
                        cmp cl, 42                                  ;aqui se compara CL con 42
                        jge compRei1                                ;si es mayor o igual, salta a la segunda verificacion
                        jne compararSalirJ1                         ;si es diferente, se salta a comparar con el boton de salir
                             compRei1:                              ;en esta seccion se compara que la coordenada Y del mouse coincide con el boton de reiniciar
                                cmp cl, 50                          ;aqui se compara Cl con 50
                                jle compararYReiniciar              ;si es igual o menor, se salta al paso final
                                jne compararSalirJ1                 ;si es diferente, se salta a comparar con el boton de salir
                                
                    compararSalirJ1:                                ;en esta seccion se compara que la coordenada X del mouse coincide con el boton de salir     
                        cmp cl, 55                                  ;aqui se compara CL con 55
                        jge compSalir1                              ;si es mayor o igual, salta a la segunda verificacion
                        jne sonar                                   ;si es diferente, salta a la etiqueta para que suene
                             compSalir1:                            ;en esta seccion se compara que la coordenada Y del mouse coincide con el boton de salir
                                cmp cl, 60                          ;compara CL con 60
                                jle compararYSalir                  ;si es menor o igual, salta al paso final
                                
                    sonar:                                          ;en esta seccion se llama la macro que produce el sonido de que fallo
                        sonido                                      ;se produce el sonido
                        jmp click                                   ;se salta a click
                            
                     compararY1:                                    ;en esta seccion se hace la comparacion final del globo1
                        inc puntaje1                                ;aqui se incrementa el puntaje
                        imprimirTexto limpiar2, 3, 54               ;aqui se borra el puntaje anterior
                        imprimirDatos puntaje1, 3, 54               ;aqui se imprime el nuevo puntaje
                        limpiarGlobos GX1, GY1, click               ;aqui se revienta el globo que fue seleccionado
                        jmp click                                   ;aqui se devuleve a click
                        
                     compararY2:                                    ;en esta seccion se hace la comparacion final del globo2
                        inc puntaje1                                ;aqui se incrementa el puntaje
                        imprimirTexto limpiar2, 3, 54               ;aqui se borra el puntaje anterior
                        imprimirDatos puntaje1, 3, 54               ;aqui se imprime el nuevo puntaje
                        limpiarGlobos GX2, GY2, click               ;aqui se revienta el globo que fue seleccionado
                        jmp click                                   ;aqui se devuleve a click
                        
                     compararY3:                                    ;en esta seccion se hace la comparacion final del globo3
                        inc puntaje1                                ;aqui se incrementa el puntaje
                        imprimirTexto limpiar2, 3, 54               ;aqui se borra el puntaje anterior
                        imprimirDatos puntaje1, 3, 54               ;aqui se imprime el nuevo puntaje
                        limpiarGlobos GX3, GY3, click               ;aqui se revienta el globo que fue seleccionado
                        jmp click                                   ;aqui se devuleve a click
                        
                     compararY4:                                    ;en esta seccion se hace la comparacion final del globo4
                        inc puntaje1                                ;aqui se incrementa el puntaje
                        imprimirTexto limpiar2, 3, 54               ;aqui se borra el puntaje anterior
                        imprimirDatos puntaje1, 3, 54               ;aqui se imprime el nuevo puntaje
                        limpiarGlobos GX4, GY4, click               ;aqui se revienta el globo que fue seleccionado
                        jmp click                                   ;aqui se devuleve a click
                        
                     compararY5:                                    ;en esta seccion se hace la comparacion final del globo5
                        inc puntaje1                                ;aqui se incrementa el puntaje
                        imprimirTexto limpiar2, 3, 54               ;aqui se borra el puntaje anterior
                        imprimirDatos puntaje1, 3, 54               ;aqui se imprime el nuevo puntaje
                        limpiarGlobos GX5, GY5, click               ;aqui se revienta el globo que fue seleccionado
                        jmp click                                   ;aqui se devuleve a click
                        
                     compararY6:                                    ;en esta seccion se hace la comparacion final del globo6
                        inc puntaje1                                ;aqui se incrementa el puntaje
                        imprimirTexto limpiar2, 3, 54               ;aqui se borra el puntaje anterior
                        imprimirDatos puntaje1, 3, 54               ;aqui se imprime el nuevo puntaje
                        limpiarGlobos GX6, GY6, click               ;aqui se revienta el globo que fue seleccionado
                        jmp click                                   ;aqui se devuleve a click
                        
                     compararY7:                                    ;en esta seccion se hace la comparacion final del globo7
                        inc puntaje1                                ;aqui se incrementa el puntaje
                        imprimirTexto limpiar2, 3, 54               ;aqui se borra el puntaje anterior
                        imprimirDatos puntaje1, 3, 54               ;aqui se imprime el nuevo puntaje
                        limpiarGlobos GX7, GY7, click               ;aqui se revienta el globo que fue seleccionado
                        jmp click                                   ;aqui se devuleve a click
                        
                     compararY8:                                    ;en esta seccion se hace la comparacion final del globo8
                        inc puntaje1                                ;aqui se incrementa el puntaje
                        imprimirTexto limpiar2, 3, 54               ;aqui se borra el puntaje anterior
                        imprimirDatos puntaje1, 3, 54               ;aqui se imprime el nuevo puntaje
                        limpiarGlobos GX8, GY8, click               ;aqui se revienta el globo que fue seleccionado
                        jmp click                                   ;aqui se devuleve a click
                        
                     compararYRendirse:                             ;en esta seccion se hace la comparacion final del boton de rendirse
                        mov cl, coordenadaY                         ;aqui se mueve a CL el valor de la coordenada Y del mouse
                        cmp cl, 21                                  ;aqui se compara CL con 21
                        je pantFinal2                               ;si es igual, se salta a la pantalla que muestra al ganador
                        jmp click                                   ;si es diferente, se salta a click
                        
                     compararYReiniciar:                            ;en esta seccion se hace la comparacion final del boton de reiniciar
                        mov cl, coordenadaY                         ;aqui se mueve a CL el valor de la coordenada Y del mouse
                        cmp cl, 21                                  ;aqui se compara CL con 21
                        je limpiar5                                 ;si es igual, se salta a la siguiente etapa
                            limpiar5:                               ;en esta seccion se reinicia el juego
                                limpiarPantalla                     ;aqui se limpia la pantalla
                                mov puntaje1, 48                    ;aqui se reinicia el puntaje 1
                                mov puntaje2, 48                    ;aqui se reinicia el puntaje 2
                                mov cont2, 00h                      ;aqui se reinicia el cont2
                                mov cont4, 1                        ;aqui se reinicia el cont4
                                mov tiempo, 00h                     ;aqui se reinicia el tiempo
                                jmp usuarios                        ;se salta a usuarios
                        jmp click                                   ;en caso de que la primea comparacion se diferente, se salta a click
                        
                     compararYSalir:                                ;en esta seccion se hace la comparacion final del boton de salir
                        mov cl, coordenadaY                         ;aqui se mueve a CL el valor de la coordenada Y del mouse
                        cmp cl, 21                                  ;aqui se compara CL con 21
                        je pantFinal4                               ;si es igual, se salta a la pantalla de salida
                        jmp click                                   ;si es diferente, se salta click
                        
;------------------------------JUGADOR 2------------------------------
                        
            jugador2:                                               ;en esta seccion comienza el juego del jugador 2
                imprimirTexto limpiar2, GY1,GX1                     ;aqui se empieza a limpiar los globos que no se reventaron del jugador1
                imprimirTexto limpiar2, GY2,GX2                      
                imprimirTexto limpiar2, GY3,GX3
                imprimirTexto limpiar2, GY4,GX4
                imprimirTexto limpiar2, GY5,GX5
                imprimirTexto limpiar2, GY6,GX6
                imprimirTexto limpiar2, GY7,GX7
                imprimirTexto limpiar2, GY8,GX8
                imprimirTexto limpiar3,2,28                         ;aqui se limpian los bordes que indican que juega el jugador1 
                imprimirTexto limpiar3,4,28                         ;aqui se limpian los bordes que indican que juega el jugador1 
                imprimirTexto limpiar3, 3,57                        ;aqui se limpia el texto que indican que juega el jugador1 
                imprimirTexto matriz3,5,28                          ;aqui se imprime el borde que indica que juega el jugador2
                imprimirTexto matriz3,7,28                          ;aqui se imprime el borde que indica que juega el jugador2
                imprimirTexto jugadorActivo, 6,57                   ;aqui se imprime el texto que indica que juega el jugador2
                imprimirTexto limpiar, 0,14                         ;aqui se limpia el texto que indica el nivel 2
                imprimirTexto nivel1T,0,14                          ;aqui se imprime el texto que indica el nivel 1
                imprimirTexto msj1,9,12                             ;aqui se imprime la instruccion
                imprimirTexto msj2,10,14                            ;aqui se imprime la instruccion
                imprimirTexto limpiar2, 23, 79                      ;aqui se espera que el usuario ingrese un enter
                mov cont2, 0                                        ;aqui se reinicia el cont2
                mov cont4, 1                                        ;aqui se reinicia el cont4
                mov tiempo, 00h                                     ;aqui se reinicia el tiempo
                
                mantener:                                           
                    mov ah, 08h
                    int 21h
                    cmp al, 0dh
                    je limpiarTextoJ2                               ;en caso de que la tecla ingresasa sea enter, se limpia el texto de la instruccion
                    jmp mantener                                    ;en caso de que sea diferente, se sigue esperando el ingreso de la tecla enter
                                                    
                limpiarTextoJ2:
                    imprimirTexto limpiar, 9,12                     ;aqui limpia el texto de la instruccion
                    imprimirTexto limpiar, 10,12                    ;aqui limpia el texto de la instruccion
                 
                          
                inicioNivel1J2:                                     ;aqui se inicia con el juego del jugador2 
                    
                    globo1J2 macro simboloJugador                   ;esta macro genera el globo1 del jugador2. Recibe el simbolo que imprimira
                        
                        numsRandom numRandom                        ;aqui se genera un numero random para la coordenada X
                            
                        GY1filaJ2:  
                            Y Y1filaJ2, GY1filaJ2, Y1restaFilaJ2, Y1sumaFilaJ2   ;aqui se compara el numero random 
                                       
                            Y1restaFilaJ2:                          ;aqui se resta al numero random dependiendo de la condicion
                                sub al,17                               
                                jmp GY1filaJ2
                                
                            Y1sumaFilaJ2:                           ;aqui se suma al numero random dependiendo de la condicion
                                add al,7                                
                                jmp GY1filaJ2
                            
                            Y1filaJ2:                               ;aqui se asgina a la variable del globo1 en la coordenada X el valor del numero random
                                mov GX9, al
                                                    
                        numsRandom numRandom1                       ;aqui se genera un numero random para la coordenada Y                 
                             
                        GX1columnaJ2:
                            X X1columnaJ2, GX1columnaJ2, X1restaColumJ2, X1sumaColumJ2   ;aqui se compara el numero random        
                            
                            X1restaColumJ2:                         ;aqui se resta al numero random dependiendo de la condicion
                                sub al, 20                                           
                                jmp GX1columnaJ2
                            
                            X1sumaColumJ2:                          ;aqui se suma al numero random dependiendo de la condicion
                                add al,7                                             
                                jmp GX1columnaJ2           
                                     
                            X1columnaJ2:                            ;aqui se asigna a la variable del globo1 en la coordenada Y el valor del numero random
                                mov GY9,al                                            
                            
                            mov ah, 02h
                            mov bh, 00d
                            mov dh, GY9                             ;aqui se mueve a DH el valor de GY9, el cual es la coordenada Y
                            mov dl, GX9                             ;aqui se mueve a DL el valor de GX9, el cual es la coordenada X
                            int 10h 
                            
                            coloresGlobos simboloJugador, 3         ;aqui se asigna el color del globo
                    endm 
                    
                    globo2J2 macro simboloJugador                   ;esta macro genera el globo2 del jugador2. Recibe el simbolo que imprimira
                        
                        numsRandom numRandom                        ;aqui se genera un numero random para la coordenada X
                            
                        GY2filaJ2:  
                            Y Y2filaJ2, GY2filaJ2, Y2restaFilaJ2, Y2sumaFilaJ2   ;aqui se compara el numero random  
                                       
                            Y2restaFilaJ2:                          ;aqui se resta al numero random dependiendo de la condicion
                                sub al,17                               
                                jmp GY2filaJ2
                                
                            Y2sumaFilaJ2:                           ;aqui se suma al numero random dependiendo de la condicion
                                add al,7                                
                                jmp GY2filaJ2
                            
                            Y2filaJ2:                               ;aqui se asgina a la variable del globo2 en la coordenada X el valor del numero random
                                mov GX10, al
                                                    
                        numsRandom numRandom1                       ;aqui se genera un numero random para la coordenada Y                   
                             
                        GX2columnaJ2:
                            X X2columnaJ2, GX2columnaJ2, X2restaColumJ2, X2sumaColumJ2     ;aqui se compara el numero random       
                            
                            X2restaColumJ2:                         ;aqui se resta al numero random dependiendo de la condicion
                                sub al, 20                                           
                                jmp GX2columnaJ2
                            
                            X2sumaColumJ2:                          ;aqui se suma al numero random dependiendo de la condicion
                                add al,7                                             
                                jmp GX2columnaJ2           
                                     
                            X2columnaJ2:                            ;aqui se asigna a la variable del globo2 en la coordenada Y el valor del numero random
                                mov GY10,al                                            
                            
                            mov ah, 02h
                            mov bh, 00d
                            mov dh, GY10                            ;aqui se mueve a DH el valor de GY10, el cual es la coordenada Y
                            mov dl, GX10                            ;aqui se mueve a DL el valor de GX10, el cual es la coordenada X
                            int 10h 
                            
                            coloresGlobos simboloJugador, 4         ;aqui se asigna el color del globo
    
                    endm
                    
                    globo3J2 macro simboloJugador                   ;esta macro genera el globo3 del jugador2. Recibe el simbolo que imprimira
                        
                        numsRandom numRandom                        ;aqui se genera un numero random para la coordenada X
                            
                        GY3filaJ2:  
                            Y Y3filaJ2, GY3filaJ2, Y3restaFilaJ2, Y3sumaFilaJ2     ;aqui se compara el numero random
                                       
                            Y3restaFilaJ2:                          ;aqui se resta al numero random dependiendo de la condicion
                                sub al,17                               
                                jmp GY3filaJ2
                               
                            Y3sumaFilaJ2:                           ;aqui se suma al numero random dependiendo de la condicion
                                add al,7                                
                                jmp GY3filaJ2
                            
                            Y3filaJ2:                               ;aqui se asgina a la variable del globo3 en la coordenada X el valor del numero random
                                mov GX11, al
                                                    
                        numsRandom numRandom1                       ;aqui se genera un numero random para la coordenada Y                  
                             
                        GX3columnaJ2:
                            X X3columnaJ2, GX3columnaJ2, X3restaColumJ2, X3sumaColumJ2    ;aqui se compara el numero random      
                            
                            X3restaColumJ2:                         ;aqui se resta al numero random dependiendo de la condicion
                                sub al, 20                                           
                                jmp GX3columnaJ2
                            
                            X3sumaColumJ2:                          ;aqui se suma al numero random dependiendo de la condicion
                                add al,7                                             
                                jmp GX3columnaJ2           
                                     
                            X3columnaJ2:                            ;aqui se asigna a la variable del globo3 en la coordenada Y el valor del numero random
                                mov GY11,al                                            
                            
                            mov ah, 02h
                            mov bh, 00d
                            mov dh, GY11                            ;aqui se mueve a DH el valor de GY11, el cual es la coordenada Y
                            mov dl, GX11                            ;aqui se mueve a DL el valor de GX11, el cual es la coordenada X
                            int 10h 
                            
                            coloresGlobos simboloJugador, 13        ;aqui se asigna el color del globo
                    endm
                    
                    globo4J2 macro simboloJugador                   ;esta macro genera el globo4 del jugador2. Recibe el simbolo que imprimira
                        
                        numsRandom numRandom                        ;aqui se genera un numero random para la coordenada X
                            
                        GY4filaJ2:  
                            Y Y4filaJ2, GY4filaJ2, Y4restaFilaJ2, Y4sumaFilaJ2      ;aqui se compara el numero random
                                       
                            Y4restaFilaJ2:                          ;aqui se resta al numero random dependiendo de la condicion
                                sub al,17                               
                                jmp GY4filaJ2
                                
                            Y4sumaFilaJ2:                           ;aqui se suma al numero random dependiendo de la condicion
                                add al,7                                
                                jmp GY4filaJ2
                            
                            Y4filaJ2:                               ;aqui se asgina a la variable del globo4 en la coordenada X el valor del numero random
                                mov GX12, al
                                                    
                        numsRandom numRandom1                       ;aqui se genera un numero random para la coordenada Y                  
                             
                        GX4columnaJ2:
                            X X4columnaJ2, GX4columnaJ2, X4restaColumJ2, X4sumaColumJ2    ;aqui se compara el numero random      
                            
                            X4restaColumJ2:                         ;aqui se resta al numero random dependiendo de la condicion  
                                sub al, 20                                           
                                jmp GX4columnaJ2
                            
                            X4sumaColumJ2:                          ;aqui se suma al numero random dependiendo de la condicion
                                add al,7                                             
                                jmp GX4columnaJ2           
                                     
                            X4columnaJ2:                            ;aqui se asigna a la variable del globo4 en la coordenada Y el valor del numero random
                                mov GY12,al                                            
                            
                            mov ah, 02h
                            mov bh, 00d
                            mov dh, GY12                            ;aqui se mueve a DH el valor de GY12, el cual es la coordenada Y
                            mov dl, GX12                            ;aqui se mueve a DL el valor de GX12, el cual es la coordenada X
                            int 10h 
                            
                            coloresGlobos simboloJugador, 11        ;aqui se asigna el color del globo
                    endm
                    
                    globo5J2 macro simboloJugador                   ;esta macro genera el globo5 del jugador2. Recibe el simbolo que imprimira
                        
                        numsRandom numRandom                        ;aqui se genera un numero random para la coordenada X
                            
                        GY5filaJ2:  
                            Y Y5filaJ2, GY5filaJ2, Y5restaFilaJ2, Y5sumaFilaJ2     ;aqui se compara el numero random
                                       
                            Y5restaFilaJ2:                          ;aqui se resta al numero random dependiendo de la condicion
                                sub al,17                               
                                jmp GY5filaJ2
                               
                            Y5sumaFilaJ2:                           ;aqui se suma al numero random dependiendo de la condicion
                                add al,7                                
                                jmp GY5filaJ2
                            
                            Y5filaJ2:                               ;aqui se asgina a la variable del globo5 en la coordenada X el valor del numero random
                                mov GX13, al
                                                    
                        numsRandom numRandom1                       ;aqui se genera un numero random para la coordenada Y                 
                             
                        GX5columnaJ2:
                            X X5columnaJ2, GX5columnaJ2, X5restaColumJ2, X5sumaColumJ2    ;aqui se compara el numero random       
                            
                            X5restaColumJ2:                         ;aqui se resta al numero random dependiendo de la condicion
                                sub al, 20                                           
                                jmp GX5columnaJ2
                            
                            X5sumaColumJ2:                          ;aqui se suma al numero random dependiendo de la condicion
                                add al,7                                             
                                jmp GX5columnaJ2           
                                     
                            X5columnaJ2:                            ;aqui se asigna a la variable del globo5 en la coordenada Y el valor del numero random
                                mov GY13,al                                            
                            
                            mov ah, 02h
                            mov bh, 00d
                            mov dh, GY13                            ;aqui se mueve a DH el valor de GY13, el cual es la coordenada Y
                            mov dl, GX13                            ;aqui se mueve a DL el valor de GX13, el cual es la coordenada X
                            int 10h 
                            
                            coloresGlobos simboloJugador, 7         ;aqui se asigna el color del globo
                    endm
                    
                    globo6J2 macro simboloJugador                   ;esta macro genera el globo6 del jugador2. Recibe el simbolo que imprimira
                        
                        numsRandom numRandom                        ;aqui se genera un numero random para la coordenada X
                            
                        GY6filaJ2:  
                            Y Y6filaJ2, GY6filaJ2, Y6restaFilaJ2, Y6sumaFilaJ2    ;aqui se compara el numero random
                                       
                            Y6restaFilaJ2:                          ;aqui se resta al numero random dependiendo de la condicion
                                sub al,17                               
                                jmp GY6filaJ2
                                
                            Y6sumaFilaJ2:                           ;aqui se suma al numero random dependiendo de la condicion
                                add al,7                                
                                jmp GY6filaJ2
                            
                            Y6filaJ2:                               ;aqui se asgina a la variable del globo6 en la coordenada X el valor del numero random
                                mov GX14, al
                                                    
                        numsRandom numRandom1                       ;aqui se genera un numero random para la coordenada Y                 
                             
                        GX6columnaJ2:
                            X X6columnaJ2, GX6columnaJ2, X6restaColumJ2, X6sumaColumJ2    ;aqui se compara el numero random      
                            
                            X6restaColumJ2:                         ;aqui se resta al numero random dependiendo de la condicion
                                sub al, 20                                           
                                jmp GX6columnaJ2
                            
                            X6sumaColumJ2:                          ;aqui se suma al numero random dependiendo de la condicion
                                add al,7                                             
                                jmp GX6columnaJ2           
                                     
                            X6columnaJ2:                            ;aqui se asigna a la variable del globo6 en la coordenada Y el valor del numero random
                                mov GY14,al                                            
                            
                            mov ah, 02h
                            mov bh, 00d
                            mov dh, GY14                            ;aqui se mueve a DH el valor de GY14, el cual es la coordenada Y
                            mov dl, GX14                            ;aqui se mueve a DL el valor de GX14, el cual es la coordenada X
                            int 10h 
                            
                            coloresGlobos simboloJugador, 9         ;aqui se asigna el color del globo
                    endm 
                    
                    globo7J2 macro simboloJugador                   ;esta macro genera el globo7 del jugador2. Recibe el simbolo que imprimira
                        
                        numsRandom numRandom                        ;aqui se genera un numero random para la coordenada X
                            
                        GY7filaJ2:  
                            Y Y7filaJ2, GY7filaJ2, Y7restaFilaJ2, Y7sumaFilaJ2   ;aqui se compara el numero random 
                                       
                            Y7restaFilaJ2:                          ;aqui se resta al numero random dependiendo de la condicion
                                sub al,17                               
                                jmp GY7filaJ2
                                
                            Y7sumaFilaJ2:                           ;aqui se suma al numero random dependiendo de la condicion
                                add al,7                                
                                jmp GY7filaJ2
                            
                            Y7filaJ2:                               ;aqui se asgina a la variable del globo7 en la coordenada X el valor del numero random
                                mov GX15, al
                                                    
                        numsRandom numRandom1                       ;aqui se genera un numero random para la coordenada Y                 
                             
                        GX7columnaJ2:
                            X X7columnaJ2, GX7columnaJ2, X7restaColumJ2, X7sumaColumJ2    ;aqui se compara el numero random       
                            
                            X7restaColumJ2:                         ;aqui se resta al numero random dependiendo de la condicion
                                sub al, 20                                           
                                jmp GX7columnaJ2
                            
                            X7sumaColumJ2:                          ;aqui se suma al numero random dependiendo de la condicion
                                add al,7                                             
                                jmp GX7columnaJ2           
                                     
                            X7columnaJ2:                            ;aqui se asigna a la variable del globo7 en la coordenada Y el valor del numero random
                                mov GY15,al                                            
                            
                            mov ah, 02h
                            mov bh, 00d                             ;aqui se mueve a DH el valor de GY15, el cual es la coordenada Y
                            mov dh, GY15                            ;aqui se mueve a DL el valor de GX15, el cual es la coordenada X
                            mov dl, GX15 
                            int 10h 
                            
                            coloresGlobos simboloJugador, 10        ;aqui se asigna el color del globo
    
                    endm
                    
                    globo8J2 macro simboloJugador                   ;esta macro genera el globo8 del jugador2. Recibe el simbolo que imprimira
                        
                        numsRandom numRandom                        ;aqui se genera un numero random para la coordenada X
                            
                        GY8filaJ2:  
                            Y Y8filaJ2, GY8filaJ2, Y8restaFilaJ2, Y8sumaFilaJ2      ;aqui se compara el numero random 
                                       
                            Y8restaFilaJ2:                          ;aqui se resta al numero random dependiendo de la condicion
                                sub al,17                               
                                jmp GY8filaJ2
                               
                            Y8sumaFilaJ2:                           ;aqui se suma al numero random dependiendo de la condicion
                                add al,7                                
                                jmp GY8filaJ2
                            
                            Y8filaJ2:                               ;aqui se asgina a la variable del globo8 en la coordenada X el valor del numero random
                                mov GX16, al
                                                    
                        numsRandom numRandom1                       ;aqui se genera un numero random para la coordenada Y                 
                             
                        GX8columnaJ2:
                            X X8columnaJ2, GX8columnaJ2, X8restaColumJ2, X8sumaColumJ2     ;aqui se compara el numero random      
                            
                            X8restaColumJ2:                         ;aqui se resta al numero random dependiendo de la condicion
                                sub al, 20                                           
                                jmp GX8columnaJ2
                            
                            X8sumaColumJ2:                          ;aqui se suma al numero random dependiendo de la condicion
                                add al,7                                             
                                jmp GX8columnaJ2           
                                     
                            X8columnaJ2:                            ;aqui se asigna a la variable del globo8 en la coordenada Y el valor del numero random
                                mov GY16,al                                            
                            
                            mov ah, 02h
                            mov bh, 00d                             ;aqui se mueve a DH el valor de GY16, el cual es la coordenada Y
                            mov dh, GY16                            ;aqui se mueve a DL el valor de GX16, el cual es la coordenada X
                            mov dl, GX16 
                            int 10h 
                            
                            coloresGlobos simboloJugador, 14        ;aqui se asigna el color del globo
                    endm
                    
                    cmp cont2, 2                                    ;compara cont2 con 2
                    je comparacionFinal                             ;si es igual a 2, salta a la comparacion de puntajes 
                    inc cont2                                       ;si no es igual, incrementa cont2
                    globosNivel1J2:                                 ;estos globos forman parte del nivel 1 y 2
                        globo1J2 signo2_valor                       ;aqui se imprime el globo1
                        globo2J2 signo2_valor                       ;aqui se imprime el globo2
                        globo3J2 signo2_valor                       ;aqui se imprime el globo3
                        globo4J2 signo2_valor                       ;aqui se imprime el globo4
                        globo5J2 signo2_valor                       ;aqui se imprime el globo5
                        cmp cont4, 2                                ;compara cont4 con 2
                        jl click2                                   ;si es menor, salta a click2
                        je globosNivel2J2                           ;si es igual, salta al nivel 2
                         
                    globosNivel2J2:                                 ;estos globos forman parte del nivel 2
                        globo6J2 signo2_valor                       ;aqui se imprime el globo6
                        globo7J2 signo2_valor                       ;aqui se imprime el globo7
                        globo8J2 signo2_valor                       ;aqui se imprime el globo8
                        
                    click2:                                         ;durante esta seccion se verifica la posicion del mouse para reventar los globos
                        cmp tiempo, 30                              ;aqui se compara el tiempo con 30
                        jle continuarJ2                             ;en caso de ser menor o igual, el tiempo corre
                        jge cambiarNivelJ2                          ;en caso de ser mayor o igual, se cambia al nivel 2
                             cambiarNivelJ2:                         ;en esta seccion se cambia al nivel 2
                                imprimirTexto limpiar2, GY9,GX9     ;aqui se emoiezan a limpiar los globos que no fueron reventados
                                imprimirTexto limpiar2, GY10,GX10 
                                imprimirTexto limpiar2, GY11,GX11
                                imprimirTexto limpiar2, GY12,GX12
                                imprimirTexto limpiar2, GY13,GX13
                                imprimirTexto limpiar2, GY14,GX14
                                imprimirTexto limpiar2, GY15,GX15
                                imprimirTexto limpiar2, GY16,GX16
                                imprimirTexto limpiar, 0, 14        ;aqui se limpia limpia el texto que indica el nivel 1
                                imprimirTexto nivel2T,0,14          ;aqui se imprime el texto que indica el nivel 2
                                inc cont4                           ;se incrementa cont4
                                mov tiempo, 00h                     ;se reinicia el tiempo para el nivel 2
                                jmp inicioNivel1J2                  ;se salta al inicio del jugador2 para empezar el proceso de imprimir los globos
                    
                       continuarJ2:                                 ;en esta seccion corre el tiempo
                       inc tiempo                                   ;incrementa el tiempo
                       calcularMouse click2, coordenadasJ2          ;aqui se calcula la posicion del mouse
                        
                    coordenadasJ2:                                  ;en esta seccion se consiguen las coordenadas X y Y
                        mov ax, cx  
                        mov bl,8   
                        div bl                                      ;aqui se divide la coordenada X por 8 para asi conseguir el valor final
                        mov coordenadaX, al                         ;aqui se asigna el valor de la division a la variable  
                        
                        mov ax, dx  
                        mov bl,8   
                        div bl                                      ;aqui se divide la coordenada Y por 8 para asi conseguir el valor final
                        mov coordenadaY, al                         ;aqui se asigna el valor de la division a la variable  
                     
                    compararX1J2:                                   ;en esta seccion se compara que la coordenada X del mouse coincide con el globo1
                        mov cl, GX9                                 ;aqui se asigna a CL la coordenada X del globo1
                        cmp cl, coordenadaX                         ;aqui se compara CL con el valor de la coordenada X del mouse
                        je verificar1J2                             ;si es igual, salta a la segunda verificacion
                        jne compararX2J2                            ;si es diferente, salta a hacer la comparacion con el globo2
                            verificar1J2:                           ;en esta seccion se compara que la coordenada Y del mouse coincide con el globo1
                                mov cl, GY9                         ;aqui se asigna a CL la coordenada Y del globo1 
                                cmp cl, coordenadaY                 ;aqui se compara CL con el valor de la coordenada Y del mouse
                                je compararY1J2                     ;si es igual, se salta al paso final
                                
                    compararX2J2:                                   ;en esta seccion se compara que la coordenada X del mouse coincide con el globo2
                        mov cl, GX10                                ;aqui se asigna a CL la coordenada X del globo2
                        cmp cl, coordenadaX                         ;aqui se compara CL con el valor de la coordenada X del mouse
                        je verificar2J2                             ;si es igual, salta a la segunda verificacion             
                        jne compararX3J2                            ;si es diferente, salta a hacer la comparacion con el globo3  
                            verificar2J2:                           ;en esta seccion se compara que la coordenada Y del mouse coincide con el globo2
                                mov cl, GY10                        ;aqui se asigna a CL la coordenada Y del globo2            
                                cmp cl, coordenadaY                 ;aqui se compara CL con el valor de la coordenada Y del mouse
                                je compararY2J2                     ;si es igual, se salta al paso final          
                                
                    compararX3J2:                                   ;en esta seccion se compara que la coordenada X del mouse coincide con el globo3                                  
                        mov cl, GX11                                ;aqui se asigna a CL la coordenada X del globo3                                 
                        cmp cl, coordenadaX                         ;aqui se compara CL con el valor de la coordenada X del mouse 
                        je verificar3J2                             ;si es igual, salta a la segunda verificacion     
                        jne compararX4J2                            ;si es diferente, salta a hacer la comparacion con el globo4
                            verificar3J2:                           ;en esta seccion se compara que la coordenada Y del mouse coincide con el globo3
                                mov cl, GY11                        ;aqui se asigna a CL la coordenada Y del globo3            
                                cmp cl, coordenadaY                 ;aqui se compara CL con el valor de la coordenada Y del mouse
                                je compararY3J2                     ;si es igual, se salta al paso final          
                                 
                    compararX4J2:                                   ;en esta seccion se compara que la coordenada X del mouse coincide con el globo4 
                        mov cl, GX12                                ;aqui se asigna a CL la coordenada X del globo4                          
                        cmp cl, coordenadaX                         ;aqui se compara CL con el valor de la coordenada X del mouse 
                        je verificar4J2                             ;si es igual, salta a la segunda verificacion     
                        jne compararX5J2                            ;si es diferente, salta a hacer la comparacion con el globo5
                            verificar4J2:                           ;en esta seccion se compara que la coordenada Y del mouse coincide con el globo4
                                mov cl, GY12                        ;aqui se asigna a CL la coordenada Y del globo4           
                                cmp cl, coordenadaY                 ;aqui se compara CL con el valor de la coordenada Y del mouse
                                je compararY4J2                     ;si es igual, se salta al paso final          
                                
                    compararX5J2:                                   ;en esta seccion se compara que la coordenada X del mouse coincide con el globo5
                        mov cl, GX13                                ;aqui se asigna a CL la coordenada X del globo5  
                        cmp cl, coordenadaX                         ;aqui se compara CL con el valor de la coordenada X del mouse
                        je verificar5J2                             ;si es igual, salta a la segunda verificacion          
                        jne compararX6J2                            ;si es diferente, salta a hacer la comparacion con el globo6 
                            verificar5J2:                           ;en esta seccion se compara que la coordenada Y del mouse coincide con el globo5         
                                mov cl, GY13                        ;aqui se asigna a CL la coordenada Y del globo5 
                                cmp cl, coordenadaY                 ;aqui se compara CL con el valor de la coordenada Y del mouse
                                je compararY5J2                     ;si es igual, se salta al paso final          
                                
                    compararX6J2:                                   ;en esta seccion se compara que la coordenada X del mouse coincide con el globo6
                        mov cl, GX14                                ;aqui se asigna a CL la coordenada X del globo6  
                        cmp cl, coordenadaX                         ;aqui se compara CL con el valor de la coordenada X del mouse
                        je verificar6J2                             ;si es igual, salta a la segunda verificacion          
                        jne compararX7J2                            ;si es diferente, salta a hacer la comparacion con el globo7
                            verificar6J2:                           ;en esta seccion se compara que la coordenada Y del mouse coincide con el globo6  
                                mov cl, GY14                        ;aqui se asigna a CL la coordenada Y del globo6
                                cmp cl, coordenadaY                 ;aqui se compara CL con el valor de la coordenada Y del mouse
                                je compararY6J2                     ;si es igual, se salta al paso final  
                                
                    compararX7J2:                                   ;en esta seccion se compara que la coordenada X del mouse coincide con el globo7
                        mov cl, GX15                                ;aqui se asigna a CL la coordenada X del globo7  
                        cmp cl, coordenadaX                         ;aqui se compara CL con el valor de la coordenada X del mouse
                        je verificar7J2                             ;si es igual, salta a la segunda verificacion         
                        jne compararX8J2                            ;si es diferente, salta a hacer la comparacion con el globo8
                            verificar7J2:                           ;en esta seccion se compara que la coordenada Y del mouse coincide con el globo7 
                                mov cl, GY15                        ;aqui se asigna a CL la coordenada Y del globo7        
                                cmp cl, coordenadaY                 ;aqui se compara CL con el valor de la coordenada Y del mouse
                                je compararY7J2                     ;si es igual, se salta al paso final   
                                
                    compararX8J2:                                   ;en esta seccion se compara que la coordenada X del mouse coincide con el globo8  
                        mov cl, GX16                                ;aqui se asigna a CL la coordenada X del globo8  
                        cmp cl, coordenadaX                         ;aqui se compara CL con el valor de la coordenada X del mouse
                        je verificar8J2                             ;si es igual, salta a la segunda verificacion         
                        jne compararRendirseJ2                      ;si es diferente, salta a hacer la comparacion con el boton de rendirse
                            verificar8J2:                           ;en esta seccion se compara que la coordenada Y del mouse coincide con el globo8
                                mov cl, GY16                        ;aqui se asigna a CL la coordenada Y del globo8   
                                cmp cl, coordenadaY                 ;aqui se compara CL con el valor de la coordenada Y del mouse
                                je compararY8J2                     ;si es igual, se salta al paso final   
                                
                    compararRendirseJ2:                             ;en esta seccion se compara que la coordenada X del mouse coincide con el boton de rendirse
                        mov cl, coordenadaX                         ;aqui se asigna a CL la coordenada X del mouse
                        cmp cl, 30                                  ;aqui se compara CL con 30
                        jge compRen1J2                              ;si es igual, salta a la segunda verificacion 
                        jne compararReiniciarJ2                     ;si es diferente, salta a hacer la comparacion con el boton de reiniciar    
                             compRen1J2:                            ;en esta seccion se compara que la coordenada Y del mouse coincide con el boton de rendirse 
                                cmp cl, 37                          ;aqui se compara CL con 37     
                                jle compararYRendirseJ2             ;si es menor, se salta al paso final
                                jne compararReiniciarJ2             ;si es diferente, se salta a comparar con el boton de reiniciar    
                                
                    compararReiniciarJ2:                            ;en esta seccion se compara que la coordenada X del mouse coincide con el boton de reiniciar
                        cmp cl, 42                                  ;aqui se compara CL con 42
                        jge compRei1J2                              ;si es mayor o igual, salta a la segunda verificacion
                        jne compararSalirJ2                         ;si es diferente, se salta a comparar con el boton de salir
                             compRei1J2:                            ;en esta seccion se compara que la coordenada Y del mouse coincide con el boton de reiniciar
                                cmp cl, 50                          ;aqui se compara Cl con 50
                                jle compararYReiniciarJ2            ;si es igual o menor, se salta al paso final
                                jne compararSalirJ2                 ;si es diferente, se salta a comparar con el boton de salir
                                 
                    compararSalirJ2:                                ;en esta seccion se compara que la coordenada X del mouse coincide con el boton de salir
                        cmp cl, 55                                  ;aqui se compara CL con 55
                        jge compSalir1J2                            ;si es mayor o igual, salta a la segunda verificacion 
                        jne sonar                                   ;si es diferente, salta a la etiqueta para que suene     
                             compSalir1J2:                          ;en esta seccion se compara que la coordenada Y del mouse coincide con el boton de salir
                                cmp cl, 60                          ;compara CL con 60 
                                jle compararYSalirJ2                ;si es menor o igual, salta al paso final 
                                
                     sonarJ2:                                       ;en esta seccion se llama la macro que produce el sonido de que fallo
                        sonido                                      ;se produce el sonido
                        jmp click2                                  ;se salta a click2
                            
                     compararY1J2:                                  ;en esta seccion se hace la comparacion final del globo1 del jugador2
                        inc puntaje2                                ;aqui se incrementa el puntaje
                        imprimirTexto limpiar2, 6, 54               ;aqui se borra el puntaje anterior
                        imprimirDatos puntaje2, 6, 54               ;aqui se imprime el nuevo puntaje
                        limpiarGlobos GX9, GY9, click2              ;aqui se revienta el globo que fue seleccionado
                        jmp click2                                  ;aqui se devuleve a click2
                        
                     compararY2J2:                                  ;en esta seccion se hace la comparacion final del globo2 del jugador2
                        inc puntaje2                                ;aqui se incrementa el puntaje
                        imprimirTexto limpiar2, 6, 54               ;aqui se borra el puntaje anterior
                        imprimirDatos puntaje2, 6, 54               ;aqui se imprime el nuevo puntaje
                        limpiarGlobos GX10, GY10, click2            ;aqui se revienta el globo que fue seleccionado
                        jmp click2                                  ;aqui se devuleve a click2
                        
                     compararY3J2:                                  ;en esta seccion se hace la comparacion final del globo3 del jugador2
                        inc puntaje2                                ;aqui se incrementa el puntaje
                        imprimirTexto limpiar2, 6, 54               ;aqui se borra el puntaje anterior
                        imprimirDatos puntaje2, 6, 54               ;aqui se imprime el nuevo puntaje      
                        limpiarGlobos GX11, GY11, click2            ;aqui se revienta el globo que fue seleccionado
                        jmp click2                                  ;aqui se devuleve a click2                                 
                        
                     compararY4J2:                                  ;en esta seccion se hace la comparacion final del globo4 del jugador2
                        inc puntaje2                                ;aqui se incrementa el puntaje
                        imprimirTexto limpiar2, 6, 54               ;aqui se borra el puntaje anterior
                        imprimirDatos puntaje2, 6, 54               ;aqui se imprime el nuevo puntaje
                        limpiarGlobos GX12, GY12, click2            ;aqui se revienta el globo que fue seleccionado
                        jmp click2                                  ;aqui se devuleve a click2     
                        
                     compararY5J2:                                  ;en esta seccion se hace la comparacion final del globo5 del jugador2
                        inc puntaje2                                ;aqui se incrementa el puntaje 
                        imprimirTexto limpiar2, 6, 54               ;aqui se borra el puntaje anterior 
                        imprimirDatos puntaje2, 6, 54               ;aqui se imprime el nuevo puntaje 
                        limpiarGlobos GX13, GY13, click2            ;aqui se revienta el globo que fue seleccionado 
                        jmp click2                                  ;aqui se devuleve a click2
                        
                     compararY6J2:                                  ;en esta seccion se hace la comparacion final del globo6 del jugador2
                        inc puntaje2                                ;aqui se incrementa el puntaje   
                        imprimirTexto limpiar2, 6, 54               ;aqui se borra el puntaje anterior 
                        imprimirDatos puntaje2, 6, 54               ;aqui se imprime el nuevo puntaje
                        limpiarGlobos GX14, GY14, click2            ;aqui se revienta el globo que fue seleccionado
                        jmp click2                                  ;aqui se devuleve a click2 
                        
                     compararY7J2:                                  ;en esta seccion se hace la comparacion final del globo7 del jugador2
                        inc puntaje2                                ;aqui se incrementa el puntaje
                        imprimirTexto limpiar2, 6, 54               ;aqui se borra el puntaje anterior
                        imprimirDatos puntaje2, 6, 54               ;aqui se imprime el nuevo puntaje
                        limpiarGlobos GX15, GY15, click2            ;aqui se revienta el globo que fue seleccionado
                        jmp click2                                  ;aqui se devuleve a click2   
                        
                     compararY8J2:                                  ;en esta seccion se hace la comparacion final del globo8 del jugador2
                        inc puntaje2                                ;aqui se incrementa el puntaje                     
                        imprimirTexto limpiar2, 6, 54               ;aqui se borra el puntaje anterior
                        imprimirDatos puntaje2, 6, 54               ;aqui se imprime el nuevo puntaje 
                        limpiarGlobos GX16, GY16, clicK2            ;aqui se revienta el globo que fue seleccionado
                        jmp click2                                  ;aqui se devuleve a click2
                        
                     compararYRendirseJ2:                           ;en esta seccion se hace la comparacion final del boton de rendirse
                        mov cl, coordenadaY                         ;aqui se mueve a CL el valor de la coordenada Y del mouse
                        cmp cl, 21                                  ;aqui se compara CL con 21                   
                        je pantFinal1                               ;si es igual, se salta a la pantalla que muestra al ganador
                        jmp click2                                  ;si es diferente, se salta a clic2k                   
                        
                     compararYReiniciarJ2:                          ;en esta seccion se hace la comparacion final del boton de reiniciar
                        mov cl, coordenadaY                         ;aqui se mueve a CL el valor de la coordenada Y del mouse
                        cmp cl, 21                                  ;aqui se compara CL con 21
                        je limpiar5J2                               ;si es igual, se salta a la siguiente etapa
                            limpiar5J2:                             ;en esta seccion se reinicia el juego
                                limpiarPantalla                     ;aqui se limpia la pantalla
                                mov puntaje1, 48                    ;aqui se reinicia el puntaje 1
                                mov puntaje2, 48                    ;aqui se reinicia el puntaje 2  
                                mov cont2, 00h                      ;aqui se reinicia el cont2  
                                mov cont4, 1                        ;aqui se reinicia el cont4
                                mov tiempo, 00h                     ;aqui se reinicia el tiempo
                                jmp usuarios                        ;se salta a usuarios
                        jmp click2                                  ;en caso de que la primea comparacion se diferente, se salta a click    
                        
                     compararYSalirJ2:                              ;en esta seccion se hace la comparacion final del boton de salir
                        mov cl, coordenadaY                         ;aqui se mueve a CL el valor de la coordenada Y del mouse
                        cmp cl, 21                                  ;aqui se compara CL con 21
                        je pantFinal4                               ;si es igual, se salta a la pantalla de salida
                        jmp click2                                  ;si es diferente, se salta click
                    
                     comparacionFinal:                              ;en esta seccion se comparan los dos puntajes para conocer al ganador
                        mov cl, puntaje1                            ;se mueve a CL el puntaje del jugador1
                        cmp cl, puntaje2                            ;se compara a CL con el puntaje del jugador2
                        jg pantFinal1                               ;si el puntaje1 es mayor, se salta a la pantalla que indica que gano el jugador1 
                        jl pantFinal2                               ;si el puntaje2 es mayor, se salta a la pantalla que indica que gano el jugador2
                        je pantFinal3                               ;si es igual, se salta sale del programa
                        
                        
    salir:
        end