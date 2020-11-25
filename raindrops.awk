# Convert a number to a string, the contents of which depend on the number's factors
#
# * if the number has 3 as a factor, output 'Pling'.
# * if the number has 5 as a factor, output 'Plang'.
# * if the number has 7 as a factor, output 'Plong'.
#
# Examples: 28's factors are 1,2,4,7,14,28 so it would be a simple 'Plong'.
#           30's factors are 1,2,3,5,6,10,15,30 so it would be a 'PlingPlang'.
#           34 has four factors: 1 2 17 34, so it would be simply 34

# In AWK, truthiness is any non-zero value.  Falsiness is any zero value.
function div_by(num){
    if ( ARGV[1] % num == 0 ) return 1
    else return 0
}

BEGIN {
    output = ""

    div_by(3) && output = output "Pling"
    div_by(5) && output = output "Plang"
    div_by(7) && output = output "Plong"

    if (output == "") output = ARGV[1]

    printf "%s\n", output
}
