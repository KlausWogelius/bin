vim $1.R
R CMD BATCH -q --no-save $1.R
less $1.Rout
#pdf Rplots

