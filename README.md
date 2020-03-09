## BlockuDoku

> Završni projekt iz kolegija Multimedijski sustavi.

### Sadržaj:
> BlockuDoku je igra za jednog igrača. Predstavlja kombinaciju dviju igara: sudoku i slagalice blokova (Block Puzzle). Cilj je složiti blokove za dovršetak linija i kvadrata koji se tako uklanjaju.

### Dnevnik Rada:

##### Napravljeno:
- Početno stanje igre sa interaktivnim gumbovima kojima se redom otvaraju stanje igre, pravila igre, rezultati te izlazi iz aplikacije
    - Stanje igre: 
        - 9x9 ploča
        - Tri nasumično generirana oblika koja se postavljaju na ploču pomoću miša
        - Postavljanjem sva tri na ploču generiraju se novi oblici
        - Postavljanjem na ploču, obliku se mijenja boja te je samo postavljanje popračeno zvučnim signalom
        - Popunjavanjem elementa (redka/stupca ili bloka), on se uklanja, te se tako dobivaju bodovi koji su prikazani unutar pehara u gornjem desnom kutu sučelja
        - Računanje bodova svodi se na broj istovremeno popunjenih elemenata puta broj blokova koji svaki element sadrži (9), plus preostalo vrijeme
        - Postavljen timer u donjem desnom kutu sučelja koji predstavlja vrijeme unutar kojeg se tri trenutno postavljena oblika trebaju staviti na ploču
        - Upozorenje crvenom bojom broja timera kada je vrijeme pri kraju
        - Težina igre regulirana gore opisanim vremenom : na početku je vrijeme 30 s, kada se pređe 100 bodova 15 s, a nakon 200 bodova 10 s, što je naznačeno promjenom boje timera
        - Ukoliko je nekog od oblika nemoguće trenutno staviti na ploču, tada se taj oblik obrubi crveno
        - Kraj igre je kada vrijeme istekne ili kada je sve preostale oblike nemoguće smjestit na ploču, što je naznačeno natpisom „Game Over“ preko sučelja  
- Završno stanje igre sastoji se od teksta unutar kojeg se nalazi ostvareni rezultat i  obavijest ukoliko je postignut najbolji rezultat ili je rezultat u prvih 10, te motivacijska poruka ukoliko nije tako
- Rezulati su prikazani u posebnom stanju
- U svakom stanju nalazi se ikona za prigušavanje zvuka (melodije koja se pušta tijekom izvođenja cijele aplikacije), gumb za povratak u glavni izbornik i lijepa pozadina





