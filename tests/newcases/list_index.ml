type nat =
  | O
  | S of nat

type list =
  | Nil
  | Cons of nat * list

let list_index : nat -> list -> nat |>
  { 0 => ( [] => 0
         | [0] => 0
         | [0; 1] => 0
         | [2; 1 ;0] => 2
         | [1; 2; 3; 0] => 3)
  | 1 => ( [] => 0
         | [1; 0] => 0
         | [2; 1] => 1
         | [5; 4; 3; 2; 1] => 4)
  | 2 => ( [1; 2] => 1
         | [0; 1; 2] => 2)} = ?
