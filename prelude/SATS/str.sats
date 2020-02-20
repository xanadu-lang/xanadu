fun//<>
string_append{i,j:int}
(x: string(i), y: string(j)): string(i+j) = $ext()

fun<>
str_app{i,j:int}
(x: string(i), y: string(j)): string(i+j)

(*
fun<a:type> tostring(x: a): string = $ext()
fun<a:type> tostr(x: a): string
*)

fun tostring{a:type}(x: a): string = $ext()
