######
#
# HX-2019-12-18:
# All the files in xanadu-lang/xanadu
# are supposed to be copied for ATS-Xanadu
#
######

CPF=cp -f

######

all::

######

update:: MISC
update:: SATS
update:: DATS
update:: CATS
update:: PRETOP
update:: PRESATS
update:: PREDATS
update:: PREDATSCATS

######

MISC: ; \
$(CPF) \
$(XATSHOME)/srcgen/xats/Makefile_xats ./srcgen/xats/.

######

SATS: ; \
$(CPF) $(XATSHOME)/srcgen/xats/SATS/*.sats ./srcgen/xats/SATS/.

DATS: ; \
$(CPF) $(XATSHOME)/srcgen/xats/DATS/*.dats ./srcgen/xats/DATS/.

CATS: ; \
$(CPF) $(XATSHOME)/srcgen/xats/CATS/*.cats ./srcgen/xats/CATS/.

######
#
PRETOP: ; $(CPF) $(XATSHOME)/prelude/*.?ats ./prelude/.
PRESATS: ; $(CPF) $(XATSHOME)/prelude/SATS/*.sats ./prelude/SATS/.
#
PREDATS: ; $(CPF) $(XATSHOME)/prelude/DATS/*.dats ./prelude/DATS/.
#
PREDATSCATS:: \
PREDATSCATS_Xint
PREDATSCATS_Xint: ; \
$(CPF) $(XATSHOME)/prelude/DATS/CATS/Xint/*.dats ./prelude/DATS/CATS/Xint/.
#
###### end of [Makefile] ######
