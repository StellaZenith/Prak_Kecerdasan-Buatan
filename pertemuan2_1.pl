menyukai(ali, menulis).
menyukai(lina, membaca).
menyukai(budi, menulis).
menyukai(ali, membaca).

teman(X, Y) :- menyukai(X, Z), menyukai(Y, Z), X \= Y.

%seseorang akan berteman, jika orang pertama dan orang kedua memiliki hobi yang sama dan orang
%kedua bukan orang pertama
