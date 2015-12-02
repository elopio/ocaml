(***********************************************************************)
(*                                                                     *)
(*                                OCaml                                *)
(*                                                                     *)
(*                        Alain Frisch, LexiFi                         *)
(*                                                                     *)
(*  Copyright 2012 Institut National de Recherche en Informatique et   *)
(*  en Automatique.  All rights reserved.  This file is distributed    *)
(*  under the terms of the Q Public License version 1.0.               *)
(*                                                                     *)
(***********************************************************************)

(* Support for some of the builtin attributes:

   ocaml.deprecated
   ocaml.error
   ocaml.ppwarning
   ocaml.warning
   ocaml.warnerror

*)


val check_deprecated: Location.t -> Parsetree.attributes -> string -> unit
val deprecated_of_attrs: Parsetree.attributes -> string option
val deprecated_of_sig: Parsetree.signature -> string option
val deprecated_of_str: Parsetree.structure -> string option

val error_of_extension: Parsetree.extension -> Location.error

val warning_enter_scope: unit -> unit
val warning_leave_scope: unit -> unit
val warning_attribute: Parsetree.attributes -> unit
val with_warning_attribute: Parsetree.attributes -> (unit -> 'a) -> 'a

val emit_external_warnings: Ast_mapper.mapper