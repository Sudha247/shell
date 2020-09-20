let exec cmd = Sys.command cmd 

let rec loop () =
  Printf.printf "$ ";
  let c = read_line () in  
  match c with
  | "q" -> ()
  | _ -> 
    exec c |> ignore; 
    loop ()
  
let _ = 
  Printf.printf "Welcome to my shell!!\n";
  loop () 