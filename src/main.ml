open Core.Std;;

let items: string list ref = ref [];;

let main args = 
  match args with
    | ["list"] -> String.concat ~sep:"\n" !items
    | ["add"; item] -> items := !items@[item]; ""
    | _ -> ""
;;

