######
#
# HX-2019-12-18:
# All the files in xanadu-lang/xanadu
# are supposed to be copied for ATS-Xanadu
#
######

CPF=cp -f

######

update:: MISC
update:: SATS
update:: DATS
update:: CATS

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

###### end of [Makefile] ######
