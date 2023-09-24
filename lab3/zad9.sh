#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 3
#
# Celem zajęć jest pogłębienie wiedzy na temat struktury systemu plików,
# poruszania się po katalogach i kontroli uprawnień w skryptach powłoki.
# Proszę unikać wykorzystywania narzędzia `find` w ramach bieżących zajęć.
#
# Nie przywiązujemy wagi do środowiska roboczego – zakładamy, że jego pliki,
# inne niż te podane wprost w treści zadań, mogą ulec zmianie, a przygotowane
# rozwiązania nadal powinny działać poprawnie (robić to, o czym zadanie mówi).
#
# Wszystkie chwyty dozwolone, ale ostatecznie w wyniku ma powstać tylko to,
# o czym mowa w treści zadania – tworzone samodzielnie ewentualne tymczasowe
# pliki pomocnicze należy usunąć.
#

#
# Zadanie 9.
# Odszukać w katalogu `dane/` i jego bezpośrednich podkatalogach (uwzględnić
# tylko jeden poziom wgłąb) wszystkie wiszące dowiązania miękkie i podjąć próbę
# ich naprawy – zakładamy, że nazwy wskazywanych przez nie plików są poprawne,
# ale doszło do jakiegoś zamieszania w strukturze katalogów. Należy odszukać
# pasujących plików zwykłych, a jeśli takie istnieją – wyświetlić nazwę
# dowiązania, dwukropek i po spacji: najkrótszą poprawną ścieżkę względną
# do niego od istniejącego dowiązania (na przykład: bravo: ../icao/bravo).
#

# function fix_link {
#     if [ ! -f "$(readlink -m "$1")" ]; then
#         target=$(readlink "$1")
#         while read -r file; do
#             if [[ "$(basename "$file")" == "$(basename "$target")" ]]; then
#                 echo "$1"
#                 rel_path=$(realpath --relative-to="$(dirname "$1")" "$file")   
#                 # echo "$rel_path"             
#                 break
#             fi
#         done < <(ls -p "$(dirname "$1")" | grep -v '/$' | grep "$(basename "$target")") 
#     fi
# }

# function fix_link2 {
#     if [ ! -f "$(readlink -m "$1")" ]; then
#         target=$(readlink "$1")
#     fi
# }

# for path in "dane"/*; do
#     if [ -d "$path" ]; then
#         for nested_path in "$path"/*; do
#             fix_link "$nested_path"
#         done
#     else
#         fix_link "$path"
#     fi
# done
