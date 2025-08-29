## Balena CLI Tools

<div align="center">
[![Versione 1.0.0](https://img.shields.io/badge/Versione-1.0.0-blue)](https://github.com/Age13Programmer/Balena-CLI-Tools/releases/tag/Linux)
</div>

### Perché
Balena CLI Tools nasce dall'esigenza personale di automatizzare l'installazione e la gestione di Balena CLI senza passare ore a cercare su internet i comandi per farlo funzionare.

---

## Descrizione

Questo repository contiene uno script Bash per facilitare l'installazione e la gestione di **Balena CLI** su sistemi Linux. Lo script guida l'utente passo passo, rilevando automaticamente la distribuzione Linux in uso (Ubuntu/Debian, Fedora, Arch Linux) e automatizzando alcune operazioni comuni.

⚠️ Attualmente, la funzionalità di masterizzazione ISO su USB è presente nello script ma non disponibile.

---

## Funzionalità principali

* Installazione guidata di **Balena CLI**:

  * Download della versione scelta dal repository ufficiale GitHub di Balena CLI.
  * Estrazione e posizionamento dei file in `/home/$USER/balena/bin`.
  * Aggiornamento del `PATH` per l'utente e suggerimento per aggiungerlo ai sudoers.
* Interfaccia interattiva semplice tramite terminale.
* Uscita sicura dallo script con conferma dell'utente.

---

## Come usare lo script

1. Clona o scarica questo repository:

   ```bash
   git clone https://github.com/age13programmer/balena-cli-tools.git
   cd balena-cli-tools
   ```
2. Rendi lo script eseguibile:

   ```bash
   chmod +x balena-cli-tools.sh
   ```
3. Avvia lo script:

   ```bash
   ./balena-cli-tools.sh
   ```
4. Segui le istruzioni a schermo:

   * Seleziona la tua distribuzione Linux.
   * Scegli l'operazione da eseguire (installazione Balena CLI, masterizzazione ISO o uscita).
   * Inserisci la versione desiderata di Balena CLI quando richiesto.

---

## Note

* Lo script richiede permessi `sudo` per alcune operazioni.
* Dopo l'installazione, potrebbe essere necessario riaprire il terminale per aggiornare il PATH.
* Feedback e suggerimenti sono benvenuti nella sezione [Issues](https://github.com/tuo-username/balena-cli-tools/issues) usando il tag più appropriato.
* Invece le recensioni sono benvenute nella sezione [Issues](https://github.com/tuo-username/balena-cli-tools/issues) usando il tag "review".

---

## Licenza

Questo progetto è distribuito sotto **GPLv3**. Vedi il file [LICENSE](LICENSE) per maggiori dettagli.
