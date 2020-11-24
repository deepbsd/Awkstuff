# usage awk -f sqr.awk n1 n2


function sqr(n){
    return n*n
}

function mul(a, b){
    return (a*b)
}

BEGIN {
    printf "Square of %d: %d\n",ARGV[1],sqr(ARGV[1])
    # Using a float here
    printf "Square Root of %d: %.7f\n",ARGV[1],sqrt(ARGV[1])   
    printf "Product of %d and %d: %d\n", ARGV[1], ARGV[2],mul(ARGV[1], ARGV[2])
}
