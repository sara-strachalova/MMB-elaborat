# MMB Elaborát - matematický model imunitní odpovědi se zaměřením na DC

Tento repozitáž slouží jako doplněk k elaborátu, jehož text je zde zveřejněn. Nachází se zde data a použité zdrojové soubory.

## Data

Veškerá data vzniklá při tvorbě elaborátu jsou uložená v zip archivu Data. Jsou rozdělena do složek podle toho, jak s nimi bylo postupně pracováno (detaily viz elaborát). Označení původní data označuje složku s nagenerovanými daty před jakýmkoli zásahem.

## Parametry

Soubor parametry-obrazky.txt obsahuje informace o parametrech použitých pro konkrétní simulace znázorněné v textu práce. Soubor zmeny-typu.txt dokumentuje výsledky bifurkační analýzy a analýzy citlivosti modelu.

## Zdrojové soubory

* dc-model.jl: implementace modelu
* analysis.jl: použit ke generování dat
* imgs-generator.jl: použit k tvorbě finálních obrázků do textu práce a k tvorbě fázových diagramů
* list_plausible.sh: z nagenerovanych protridenych dat vytvori jediny soubor s parametry simulaci
* minmax.sh: pro kazdy parametr z vysledku predchoziho skriptu spocita minimum, maximum a medián
* cluster_analysis: z obrazovych dat roztridenych do kategorii a puvodnich textovych dat vytvori soubor s parametry pro danou kategorii
* minmaxmed-klastry: spočítá minimum, maximum a medián pro soubory s parametry jednotlivých klastrů
* median.awk: pomocný soubor pro výpočet mediánu, převzato
