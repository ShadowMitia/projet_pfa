type t = {
  id : string;
  porig : Point.t; 
  pdest : Point.t;
  ci : float;
  ce : float;
  }

type tpos = L | R | C

val print_segment : t -> unit

val new_segment : ?id:string -> int -> int -> int -> int -> t

val get_position : Point.t -> t -> tpos

val split_segment : t -> t -> t option * t option

val split : t -> t list -> t list * t list

val get_real_coord : t -> (float * float * float * float)

val get_coord : t -> int * int * int * int
