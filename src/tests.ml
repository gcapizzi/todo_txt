open Core.Std;;
open OUnit2;;

open Main;;

let it_adds_a_todo_item test_ctxt = 
  let _ = main ["add"; "buy milk"] in 
  let output = main ["list"] in
  assert_bool "it adds the item" (String.substr_index output "buy milk" <> None)
;;

let suite = 
  "todo_txt" >:::
    [ "it adds a todo item" >:: it_adds_a_todo_item ]
;;

let () = 
  run_test_tt_main suite
;;
