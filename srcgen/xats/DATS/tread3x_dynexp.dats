(***********************************************************************)
(*                                                                     *)
(*                         Applied Type System                         *)
(*                                                                     *)
(***********************************************************************)

(*
** ATS/Xanadu - Unleashing the Potential of Types!
** Copyright (C) 2018 Hongwei Xi, ATS Trustful Software, Inc.
** All rights reserved
**
** ATS is free software;  you can  redistribute it and/or modify it under
** the terms of  the GNU GENERAL PUBLIC LICENSE (GPL) as published by the
** Free Software Foundation; either version 3, or (at  your  option)  any
** later version.
** 
** ATS is distributed in the hope that it will be useful, but WITHOUT ANY
** WARRANTY; without  even  the  implied  warranty  of MERCHANTABILITY or
** FITNESS FOR A PARTICULAR PURPOSE.  See the  GNU General Public License
** for more details.
** 
** You  should  have  received  a  copy of the GNU General Public License
** along  with  ATS;  see the  file COPYING.  If not, please write to the
** Free Software Foundation,  51 Franklin Street, Fifth Floor, Boston, MA
** 02110-1301, USA.
*)

(* ****** ****** *)
//
// Author: Hongwei Xi
// Start Time: September, 2019
// Authoremail: gmhwxiATgmailDOTcom
//
(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#staload
UN = "prelude/SATS/unsafe.sats"
//
(* ****** ****** *)
//
#staload "./../SATS/label0.sats"
//
#staload "./../SATS/xerrory.sats"
//
(* ****** ****** *)
//
#staload "./../SATS/locinfo.sats"
//
(* ****** ****** *)
//
#staload "./../SATS/lexing.sats"
//
#staload "./../SATS/staexp2.sats"
#staload "./../SATS/statyp2.sats"
#staload "./../SATS/dynexp1.sats"
#staload "./../SATS/dynexp2.sats"
#staload "./../SATS/dynexp3.sats"
//
#staload "./../SATS/tread3x.sats"
//
(* ****** ****** *)

#staload
_(*TMP*) = "./../DATS/staexp2_print.dats"
#staload
_(*TMP*) = "./../DATS/statyp2_print.dats"
#staload
_(*TMP*) = "./../DATS/dynexp1_print.dats"
#staload
_(*TMP*) = "./../DATS/dynexp2_print.dats"
#staload
_(*TMP*) = "./../DATS/dynexp3_print.dats"

(* ****** ****** *)
//
overload
print with pprint_t2ype of 10
overload
prerr with pprerr_t2ype of 10
//
(* ****** ****** *)

implement
//{}(*tmp*)
tread3x_d3pat(d3p0) = ()
implement
//{}(*tmp*)
tread3x_d3patlst(d3ps) = ()

(* ****** ****** *)

local

fun
auxtcst
(d3e0: d3exp): void =
let
//
val loc0 = d3e0.loc()
//
val-
D3Etcst
( d2c0
, ti3a
, ti2s) = d3e0.node()
//
val () =
trerr3x_add(TRERR3Xd3exp(d3e0))
//
val () =
prerrln!
( loc0, ": ***TRERR3X***")
val () =
prerrln!
( loc0
, ": TRERR3X(D3Etcst): unimplemented")
val () =
prerrln!
( loc0
, ": TRERR3X(D3Etcst): template name = ", d2c0)
val () =
prerrln!
( loc0
, ": TRERR3X(D3Etcst): template argexps = ", ti3a)
(*
val () =
prerrln!
( loc0
, ": TRERR3X(D3Etcst): template argvars = ", ti2s)
*)
in
  // nothing
end // end of [auxtcst]

(* ****** ****** *)

fun
auxtimp
(d3e0: d3exp): void =
let
//
val-
D3Etimp
( tcst
, targ
, timp
, tsub) = d3e0.node()
//
in
//
case-
timp.node() of
|
D3Cfundecl _ => auxtimp2f(d3e0)
|
D3Cimpdecl3 _ => auxtimp2i(d3e0)
//
end // end of [auxtimp]
//
and
auxtimp2f
(d3e0: d3exp): void =
let
//
val
loc0 = d3e0.loc()
//
val-
D3Etimp
( tcst
, targ
, timp
, tsub) = d3e0.node()
//
val-
D3Etcst
(d2c0, _, _) = tcst.node()
//
val-
D3Cfundecl
( knd0, mopt
, tqas, f3ds) = timp.node()
//
in
//
auxf3ds(f3ds) where
{
//
fun
auxf3d0
( f3d0
: f3undecl): void =
let
val
loc1 = f3d0.loc()
val+
F3UNDECL(rcd) = f3d0
in
//
case+
rcd.def of
|
Some(d3e0) => tread3x_d3exp(d3e0)
|
None((*void*)) =>
let
val () =
trerr3x_add
(TRERR3Xd3exp_timp2f(d3e0, f3d0))
in
prerrln!
(loc0, ": ***TRERR3X***");
prerrln!
( loc0
, ": TRERR3X(D3Etimp): undefined: ", rcd.d2c);
prerrln!
( loc0
, ": TRERR3X(D3Etimp): ", loc1, ": f3d0 = ", f3d0);
end // end of [None]
//
end // end of [auxf3d0]
//
fun
auxf3ds
( f3ds
: f3undeclist): void =
let
val-
list_cons
(f3d0, f3ds) = f3ds
in
case+ f3ds of
|
list_nil() => auxf3d0(f3d0)
|
list_cons _ =>
if
(d2c0=f3d0.d2c())
then auxf3d0(f3d0) else auxf3ds(f3ds)
end
} (* end of [auxf3ds] *)
//
end // end of [auxtimp2f]
//
and
auxtimp2i
(d3e0: d3exp): void =
let
//
val-
D3Etimp
( tcst
, targ
, timp
, tsub) = d3e0.node()
//
val-
D3Cimpdecl3
( knd0, mopt
, sqas, tqas
, id2c, ti3a, ti2s
, f3as, res1, def2) = timp.node()
//
in
  tread3x_d3exp(def2)
end // end of [auxtimp2i]

(* ****** ****** *)

in(* in-of-local *)

implement
//{}(*tmp*)
tread3x_d3exp
  (d3e0) = let
//
val
loc0 = d3e0.loc((*void*))
//
(*
val () =
println!
("tread3x_d3exp: d3e0 = ", d3e0)
*)
//
//
in(*in-of-let*)
//
case+
d3e0.node() of
//
| D3Eint _ => ()
| D3Ebtf _ => ()
| D3Echr _ => ()
| D3Eflt _ => ()
| D3Estr _ => ()
//
| D3Evar _ => ()
//
| D3Econ1 _ => ()
| D3Ecst1 _ => ()
//
| D3Econ2 _ => ()
//
| D3Esym0 _ => ()
//
| D3Efcst _ => ()
//
| D3Etcst _ =>
  (
    auxtcst(d3e0)
  )
| D3Etimp _ =>
  (
    auxtimp(d3e0)
  )
//
| D3Esap1
  (d3e1, s2e2) =>
  {
    val () =
    tread3x_d3exp(d3e1)
  }
//
| D3Edapp
  (d3f1, npf2, d3es) =>
  {
    val () =
    tread3x_d3exp(d3f1)
    val () =
    tread3x_d3explst(d3es)
  }
//
| D3Epcon
  (d3e1, lab2) =>
  {
(*
  val () = aux_D3Epcon(d3e0)
*)
  val () = tread3x_d3exp(d3e1)
  }
//
| D3Eif0
  (d3e1, d3e2, opt3) =>
  {
//
  val () = tread3x_d3exp(d3e1)
  val () = tread3x_d3exp(d3e2)
  val () = tread3x_d3expopt(opt3)
//
  }
//
| D3Ecase
  (knd0, d3e1, d3cs) =>
  {
  val () = tread3x_d3exp(d3e1)
(*
  val () = tread3x_d3claulst(d3cs)
*)
  }
//
| D3Elet(d3cs, d3e1) =>
  {
    val () =
    tread3x_d3eclist(d3cs)
    val () = tread3x_d3exp(d3e1)
  }
| D3Ewhere(d3e1, d3cs) =>
  {
    val () =
    tread3x_d3eclist(d3cs)
    val () = tread3x_d3exp(d3e1)
  }
//
| D3Eseqn(d3es, d3e1) =>
  {
    val () =
    tread3x_d3explst(d3es)
    val () = tread3x_d3exp(d3e1)
  }
//
| D3Etuple
    (knd0, npf1, d3es) =>
  {
    val () =
    tread3x_d3explst(d3es)
  }
//
| D3Eassgn(d3e1, d3e2) =>
  {
    val () = tread3x_d3exp(d3e1)
    val () = tread3x_d3exp(d3e2)
  }
//
| D3Etry
  (tok0, d3e1, d3cs) =>
  {
    val () = tread3x_d3exp(d3e1)
(*
    val () = tread3x_d3claulst(d3cs)
*)
  }
//
| D3Eaddr(d3e1) =>
  {
    val () = tread3x_d3exp(d3e1)
  }
//
| D3Efold(d3e1) =>
  {
    val () = tread3x_d3exp(d3e1)
  }
| D3Efree(d3e1) =>
  {
    val () = tread3x_d3exp(d3e1)
  }
//
| D3Eeval
  ( knd0, d3e1 ) =>
  {
    val () = tread3x_d3exp(d3e1)
  }
//
| D3Elazy(d3e1) =>
  {
    val () = tread3x_d3exp(d3e1)
  }
| D3Ellazy(d3e1, d3es) =>
  {
  val () = tread3x_d3exp(d3e1)
  val () = tread3x_d3explst(d3es)
  }
//
| D3Eflat(d3e1) =>
  {
    val () = tread3x_d3exp(d3e1)
  }
| D3Etalf(d3e1) =>
  {
    val () = tread3x_d3exp(d3e1)
  }
//
| D3Elcast(d3e1, lab2) =>
  {
    val () = tread3x_d3exp(d3e1)
  }
| D3Etcast(d3e1, t2p2) =>
  {
    val () = tread3x_d3exp(d3e1)
  }
//
| D3Enone0() => ((*void*))
//
| D3Enone1(_) =>
  let
    val () =
    trerr3x_add(TRERR3Xd3exp(d3e0))
  in
    prerrln!
    (loc0, ": ***TRERR3X***");
    prerrln!
    ( loc0
    , ": TRERR3X(D3Enone1): the d3exp-error: ", d3e0);
  end // end of [D1Enone1]
//
| _(* rest-of-d3exp *) =>
  {
    val () = prerrln!(loc0, ": tread3x_d3exp(", d3e0, ")")
  }
//
end // end of [tread3x_d3exp]

end // end of [local]

(* ****** ****** *)
//
implement
//{}(*tmp*)
tread3x_d3expopt(opt) =
(
case+ opt of
| None() => ()
| Some(d3e) => tread3x_d3exp(d3e)
)
//
implement
//{}(*tmp*)
tread3x_d3explst(d3es) =
(
list_foreach<d3exp>(d3es)
) where
{
implement(env)
list_foreach$fwork<d3exp><env>(d3e, env) = tread3x_d3exp(d3e)
} (* end of [tread3x_d3explst] *)
//
(* ****** ****** *)

implement
//{}(*tmp*)
tread3x_d3ecl(d3cl) =
let
//
val loc0 = d3cl.loc()
//
(*
val () =
println!
("tread3x_d3ecl: d3cl = ", d3cl)
*)
//
in(*in-of-let*)
//
case+
d3cl.node() of
//
| D3Cd2ecl(d2c) => ()
//
| D3Cstatic(tok, d3c1) =>
  {
    val () = tread3x_d3ecl(d3c1)
  }
| D3Cextern(tok, d3c1) =>
  {
    val () = tread3x_d3ecl(d3c1)
  }
//
| D3Cinclude
  ( tok
  , src, knd
  , fopt, body) =>
  {
    val () =
    (
    case+ body of
    | None() => ()
    | Some(d3cs) =>
      (
        tread3x_d3eclist(d3cs)
      )
    )
  }
//
| D3Cstaload _ => ()
//
| D3Cvaldecl
  (knd, mopt, v3ds) =>
  {
    val () = tread3x_v3aldeclist(v3ds)
(*
    val () =
    println!
    ("tread3x_d3ecl: D3Cvaldecl: v3ds = ", v3ds)
*)
  }
//
| D3Cvardecl
  (knd, mopt, v3ds) =>
  {
    val () = tread3x_v3ardeclist(v3ds)
(*
    val () =
    println!
    ("tread3x_d3ecl: D3Cvaldecl: v3ds = ", v3ds)
*)
  }
//
| D3Cfundecl
  (knd, mopt, tq2s, f3ds) =>
  {
    val () = tread3x_f3undeclist(f3ds)
(*
    val () =
    println!
    ("tread3x_d3ecl: D3Cfundecl: f3ds = ", f3ds)
*)
  }
//
| D3Cimpdecl3
  ( tok, mopt
  , sqas, tqas
  , id2c, ti3a, ti2s
  , f3as, res0, d3e0) =>
  (
    if
    iseqz(ti2s)
    then
    {
      val () = tread3x_d3exp(d3e0) // non-temp
    }
    else
    {
(*
      val () = tread3x_d3exp(d3e0) // template
*)
    }
  )
//
| _(* rest-of-d3ecl *) =>
  {
    val () = println!(loc0, ": tread3x_d3ecl(", d3cl, ")")
  }
//
end // end of [tread3x_d3ecl]

(* ****** ****** *)
//
implement
//{}(*tmp*)
tread3x_d3eclist(d3cs) =
(
list_foreach<d3ecl>(d3cs)
) where
{
implement(env)
list_foreach$fwork<d3ecl><env>(d3c, env) = tread3x_d3ecl(d3c)
} (* end of [tread3x_d3eclist] *)
//
(* ****** ****** *)
//
implement
//{}(*tmp*)
tread3x_v3aldecl
  (v3d0) =
{
  val () =
  tread3x_d3pat(rcd.pat)
  val () =
  tread3x_d3expopt(rcd.def)
(*
  val () =
  tread3x_s2expopt(rcd.wth)
*)
} where
{
//
  val+V3ALDECL(rcd) = v3d0
//
} (* end of [tread3x_v3aldecl] *)
//
implement
//{}(*tmp*)
tread3x_v3aldeclist(v3ds) =
(
list_foreach<v3aldecl>(v3ds)
) where
{
implement(env)
list_foreach$fwork<v3aldecl><env>(v3d, env) = tread3x_v3aldecl(v3d)
} (* end of [tread3x_v3aldeclist] *)
//
(* ****** ****** *)
//
implement
//{}(*tmp*)
tread3x_v3ardecl
  (v3d0) =
{
  val () =
  tread3x_d3expopt(rcd.ini)
(*
  val () =
  tread3x_s2expopt(rcd.res)
*)
} where
{
//
  val+V3ARDECL(rcd) = v3d0
//
} (* end of [tread3x_v3ardecl] *)
//
implement
//{}(*tmp*)
tread3x_v3ardeclist(v3ds) =
(
list_foreach<v3ardecl>(v3ds)
) where
{
implement(env)
list_foreach$fwork<v3ardecl><env>(v3d, env) = tread3x_v3ardecl(v3d)
} (* end of [tread3x_v3ardeclist] *)
//
(* ****** ****** *)
//
implement
//{}(*tmp*)
tread3x_f3undecl
  (f3d0) =
{
  val () =
  tread3x_d3expopt(rcd.def)
(*
  val () =
  tread3x_s2expopt(rcd.wtp)
*)
} where
{
//
  val+F3UNDECL(rcd) = f3d0
//
} (* end of [tread3x_f3undecl] *)
//
implement
//{}(*tmp*)
tread3x_f3undeclist(f3ds) =
(
list_foreach<f3undecl>(f3ds)
) where
{
implement(env)
list_foreach$fwork<f3undecl><env>(f3d, env) = tread3x_f3undecl(f3d)
} (* end of [tread3x_f3undeclist] *)
//
(* ****** ****** *)

local

static
fun//{}
the_trerr3xlst_get(): trerr3xlst
extern
fun//{}
the_trerr3xlst_set(trerr3xlst): void

implement
//{}(*tmp*)
trerr3x_add(xerr) = let
//
val
xerrs = the_trerr3xlst_get()
//
in
  the_trerr3xlst_set(list_cons(xerr, xerrs))
end // end of [trerr3x_add]

in (* in-of-local *)
//
local
//
val
the_trerr3xlst =
ref<trerr3xlst>(list_nil)
//
in(*in-of-local*)
implement
the_trerr3xlst_get() = the_trerr3xlst[]
implement
the_trerr3xlst_set(xs) = the_trerr3xlst[] := xs
end // end of [local]
//
implement
tread3x_main(d3cs) = let
//
val () =
tread3x_d3eclist(d3cs)
//
val
xerrs = the_trerr3xlst_get()
val
nxerr = list_length<trerr3x>(xerrs)
//
in
//
if
(nxerr > 0)
then
{
//
val () =
prerrln!
("\
tread3x_main: \
nxerr = ", nxerr)
//
val () =
if
(nxerr = 1)
then
prerrln!
("\
tread3x_main: \
there is one trerr3x-error!")
val () =
if
(nxerr > 1)
then
prerrln!
("\
tread3x_main: \
there are some trerr3x-errors!")
//
val () =
(
$raise(XATSOPT_TRERR3X_EXN(*void*))
) : void
//
} (* end of [then] *)
else
{
//
val () =
prerrln!
("\
tread3x_main: \
there are none of trerr3x-errors!")
//
} (* end of [else] *)
//
end // end of [tread3x_main]

end // end of [local]

(* ****** ****** *)

(* end of [xats_tread3x_dynexp.dats] *)