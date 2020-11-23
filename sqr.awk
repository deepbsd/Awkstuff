# usage awk -f sqr.awk n1 n2


function sqr(n){
    return n*n
}

BEGIN {
    printf "Square: %d\n",sqr(ARGV[1])   
    # Using a float here
    printf "Square Root: %.7f\n",sqrt(ARGV[1])   
}
