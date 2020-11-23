#   usage: awk -v n=38 -f fizzbuzz.awk
#
BEGIN {
    if(!n) n=100
    print "# FizzBuzz:"

    for (i=1; i<=n; i++){
        if (i % 15 == 0) { printf "Fizzbuzz \n" }
        else if (i % 3 == 0 ) { printf "Fizz " }
        else if (i % 5 == 0 ) { printf "Buzz " }
        else  { printf "%d ", i }
    }
    print 
}
