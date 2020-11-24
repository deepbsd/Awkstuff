#  usage:  awk -f hello.awk [<name>]

function concat(s1, s2){
    return s1 s2
}

BEGIN {
    (ARGV[1] != "") ? name = ARGV[1] : name = "World"
    printf "%s!\n", concat("Hello ", name)
}
