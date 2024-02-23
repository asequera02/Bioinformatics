# load libraries
library(msa)
library(Biostrings)
library(seqinr)

#We start by setting up the directory that provides the data.
setwd("C:/Users/Alvin/Downloads/Bioinformatics")
#After setting up the directory, we have to name the sequences.
Homos <- readDNAStringSet("Homo.fasta")
#The following step is to use "msa" and use a new variable.
Bori <- msa(Homos)
#This function shows the length of the sequence, which is 642.
nchar(Bori) # make sure the variables are correctly named

#To see my aligment we use the following function.
print(Bori, show="complete")
alFreq <- alphabetFrequency(Bori)
alFreq
#The best accesion number of the best match for the search appears to be Homo_sapiens 6.
#I used Blast for Homo 6.
#The Accession number is AY356351.1

# setwd("C:/Users/Alvin/Downloads/vnz") 
# everything should be in your Bioinformatics folder
# I don't have access to this file so I can't grade it
# the code looks correct though
MutantX <- readDNAStringSet("sequence (6).fasta") 
Mutant7 <- Biostrings::translate(MutantX)
print(Mutant7)
#Next we have to print the sequence into a Fasta file.
setwd("C:/Users/Alvin/Downloads/vnz")
write.fasta(sequences = Mutant7, names = Mutant7, file.out = "MUtXX", open = "w", nbchar = 60, as.string = FALSE)
#I searched in Blast and Genbank and found that sickle beta thalassaemia and sickle cell anemia are the diseases associated to the gene and the subject does have these diseases. 
