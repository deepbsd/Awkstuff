# usage: awk -f mul.awk n1 n2

function mul(num1, num2) {
    return (num1*num2)
}

BEGIN { 
    ##  ARGV has to be uppercase!
    printf "%d\n",mul(ARGV[1], ARGV[2])
}



