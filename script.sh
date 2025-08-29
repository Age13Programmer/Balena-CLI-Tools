#!/bin/bash
clear
echo "########################################################"
echo "#                  Balena CLI tools                    #"
echo "#                   Versione Linux                     #"
echo "########################################################"

echo "#          Informazioni sul sistema operativo          #"

echo "Scrivi il numero corrispondente al sistema su cui è basata la distro in uso"
echo "1 - Ubuntu/Debian"
echo "2 - Fedora"
echo "3 - Arch Linux"
read -p "Inserisci based " os_based

echo "#                 Scelta operazione                    #"

echo "Scegli un'operazione:"
echo "1) Installazione di Balena CLI (obbligatorio se non già installato)"
echo "2) Masterizza ISO su USB"
echo "3) Esci"

read -p "Inserisci scelta: " scelta

case $scelta in
    1)
        echo "Avvio installazione di Balena CLI..."
        echo "Controlla la versione sul repo Github ufficiale e inseriscila qui senza "v":"
        read -p "Versione attuale" version
        inizio=https://github.com/balena-io/balena-cli/releases/download/v
        slash=/
        fine_1=balena-cli-v
        fine_2=-linux-arm64-standalone.tar.gz
        sudo wget $inizio$version$slash$fine_1$version$fine_2
        tar -xvzf $fine_1$version$fine_2
        cd /home/$USER/balena/bin
        export PATH="/home/$USER/balena/bin:$PATH"
        echo "Adesso andremo ad aggiungere il percorso del path anche alla cartella /root e al file dei sudoers"
        echo "Adesso copieremo il file tar.gz nella cartella"
        sudo wget $inizio$version$slash$fine_1$version$fine_2
        tar -xvzf $fine_1$version$fine_2
        echo "Adesso aggiungi il path al file dei sudoers seguendo questo ordine:"
        echo "###############################################################################################"
        echo "# Defaults	secure_path="[/root/balena-cli/bin:][altra roba preesistente da non eliminare]" #"
        echo "###############################################################################################"
        sudo visudo
        echo "Installazione completata con successo. Il terminale verrà chiuso per permettere ai nuovi path di essere aggiornati."
        echo "Grazie mille. Se ti va scrivi su Github cosa ne pensi nella sezione ISSUES e usando come tag 'review'"
        read -n1 -s -r -p "Premi un tasto per continuare..."
        exit 0
        ;;
    2)
        echo "Masterizzazione ISO su USB..."
        echo "#########################################################"
        echo "#                   NON DISPONIBILE                     #"
        echo "#########################################################"
        echo "#  Ci dispiace ma attualmente l'unico tool disponibile  #"
        echo "#   è l'auto installazione del programma Balena-CLI     #"
        echo "#########################################################"

        ;;
    3)
        echo "Uscita."
        exit 0
        ;;
    *)
        echo "Opzione non valida."
        ;;
esac