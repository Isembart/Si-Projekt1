Na projekt składa się wykonanie:

Predykaty son/2, granddaughter/2, aunt/2, partner/2 z Lab 2.pdf, opisane w (zad2.pl). Tylko te predykaty podlegają ocenie. Relacje zachodzące na drzewie są opisane od najstarszych osób od lewej do prawej patrząc na drzewo zdefiniowane w Lab2. Partner to osoba X, która posiada dziecko z osobą Y niezależnie od ich płci. (zad2.pl)
Lab3 (zad3.pl)
Lab4 (zad4.pl) - bez wykonywania predykatów sort1/1 i naivesort/2, arytmetyka wbudowana w prologu, a nie symboliczna!!!
Studenci składają projekt w parach w postaci archiwum .zip nazwanego w następujący sposób: Imie1_Nazwisko1_Imie2_Nazwisko2_SI2627. W archiwum kody programów mają być zachowane w postaci plików o rozszerzeniu .pl nazwane w powyżej wskazany sposób (odpowiednio zad2.pl, zad3.pl, zad4.pl). W archiwum mają znajdować się 3 wskazane pliki, bez żadnego folderu pośredniczącego. Dlatego jedyna poprawna ścieżka to np. Karol_Kowalski_SI2627.zip/zad2.pl! Niepoprawna ścieżka np.: Karol_Kowalski_SI2627.zip/Projekt/zad2.pl Ta część projektu zostanie sprawdzona automatycznie, tak więc proszę kilkukrotnie upewnić się o poprawności nazwanych plików jak i predykatów. Przesłane skrypty w języku Prolog muszą być w pełni poprawne i nie mogą zgłaszać żadnych błędów ani ostrzeżeń. Do rozwiązania zadań nie wolno używać elementów istniejących już w prologu np. append - należy je zaimplementować od zera samodzielnie.

Proszę także zwrócić uwagę na nieredefiniowanie predykatów systemowych (wszystkie wypisane są na stronie: http://www.gprolog.org/manual/html_node/gprolog024.html). Jeżeli któryś z predykatów do zadeklarowania miałby przysłaniać predykat systemowy proszę dodać do jego nazwy "1" (np. predykat repeat z Lab4 może przysłonić predykat systemowy repeat/0, więc należy go nazwać zamiast repeat - repeat1). W przypadku, gdy dany skrypt posiada ostrzeżenia lub błędy całe zadanie zostaje ocenione na 0 punktów przez system. 



# Uwaga - sposób obsługi skrajnych przypadków:

Lab2
son(bob,bob) -> false

Lab3
quotient(s(s(s(s(zero)))),s(s(s(zero))),X) -> s(zero)
quotient(s(s(s(s(zero)))),s(zero),X) -> s(s(s(s(zero))))
quotient(s(s(s(s(zero)))),zero,X) -> true lub false
quotient(s(s(zero)),s(s(s(zero))),X) -> zero lub false

remainder(s(s(zero)),s(s(zero)),X) -> zero
remainder(s(s(s(s(s(zero))))),zero,X) -> true

fact(zero,X) -> s(zero)

fibonacci(zero,zero) -> true

shownum(zero,X) -> 0
shownum(zer,X) -> false

Lab4
sum([],X) -> 0 lub false
avg([],X) -> 0 lub false

count(a,[],X) -> 0 lub false
double([],X) -> [] lub false

repeat1([],X,5) -> [] lub false