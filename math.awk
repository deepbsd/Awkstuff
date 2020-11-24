# usage:  awk -f math.awk n1 (+-/*) n2

## This is a fun little calculator written in awk

function minus(a,b){
    return a - b
}

function plus(a,b){
    return a + b
}

function mult(a,b){
    return a * b
}

function div(a, b){
    return a/b
}

function usage(){
    print "usage: awk -f math.awk number1 <sign> number2"
    print "usage: <sign> must be one of + - * /"
    print "You must escape the * sign with \\ "
    print "Examples: awk -f math.awk 8 / 4 ; awk -f math.awk 9 \\* 2, etc"
}

BEGIN {
    result=0
    switch (ARGV[2]) { 
        case "+":
            result = plus(ARGV[1], ARGV[3])
            break
        case "-":
            result = minus(ARGV[1], ARGV[3])
            break
        case "*":
            result = mult(ARGV[1], ARGV[3])
            break
        case "/":
            result = div(ARGV[1], ARGV[3])
            break
        default:
            usage()
            break
    }
    printf "%s\n",result
}
