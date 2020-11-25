# usage:  awk -f twofer.awk -v name=Bill

BEGIN {
    if (ARGV[1] == "") {
        name = "you"
    } else {
        name = ARGV[1]
    }
    printf "One for %s, one for me.\n", name
}
