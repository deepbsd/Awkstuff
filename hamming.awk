# Calculate the Hamming difference between two DNA strands.
# 
# A mutation is simply a mistake that occurs during the creation or copying of a nucleic acid, in particular DNA. Because nucleic acids are vital to cellular
# functions, mutations tend to cause a ripple effect throughout the cell. Although mutations are technically mistakes, a very rare mutation may equip the cell with
# a beneficial attribute. In fact, the macro effects of evolution are attributable by the accumulated result of beneficial microscopic mutations over many
# generations.
# 
# The simplest and most common type of nucleic acid mutation is a point mutation, which replaces one base with another at a single nucleotide.
# 
# By counting the number of differences between two homologous DNA strands taken from different genomes with a common ancestor, we get a measure of the minimum
# number of point mutations that could have occurred on the evolutionary path between the two strands.
# 
# This is called the 'Hamming distance'.
# 
# It is found by comparing two DNA strands and counting how many of the nucleotides are different from their equivalent in the other string.
# 
# GAGCCTACTAACGGGAT
# CATCGTAATGACGGCCT
# ^ ^ ^  ^ ^    ^^
# The Hamming distance between these two DNA strands is 7.
# 
# Implementation notes
# 
# The Hamming distance is only defined for sequences of equal length. This means that based on the definition, each language could deal with getting sequences of
# equal length differently.
# 
# Run the tests with:
# 
# bats hamming_test.sh

BEGIN {

    distance = 0

    if (ARGC < 2){
        print "Usage: hamming.sh <string1> <string2>"
        exit 1
    }

    split(ARGV[1], first, "")
    split(ARGV[2], second, "")

    if ( length(ARGV[1]) == length(ARGV[2]) ) {
        for (i=1; i<=length(ARGV[1]); i++) {
            ( first[i] != second[i] ) ? distance++ : distance=distance
        }
    } else {
        print "The two strands must have the same length."
        exit 1
    }

    printf "%d\n",distance
}
