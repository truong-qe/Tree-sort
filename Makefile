CF         = gfortran
FFLAGS     = -O0
LD         = gfortran
LDFLAGS    = 
PREPROC    = 

OBJS = random_number_generator_module.o  \
	tree_sort_module.o  \
	tree_sort.o  \


.SUFFIXES: .o .f95 .f90 .f
.f95.o:
	$(LD) -c $(FFLAGS) $<
.f90.o:
	$(LD) -c $(FFLAGS) $<
.f.o:
	$(LD) -c $(FFLAGS) $<  	

app.exe : $(OBJS) 
	$(LD) $(LDFLAGS) -o $@ $(OBJS)

clean :
	rm -f *.exe *.o *.mod