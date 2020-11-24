# usage awk -f isee.awk name1 name2 name3
#


BEGIN {
    if (ARGC >= 1) {
        for ( n=1; n<ARGC; n++ ) {
            names[n] = ARGV[n]
        }
    }

    output = "I see "
    for (name in names) {
        output = output names[name] ", "
    }

    printf "%s\n", substr(output, 0, (length(output)-2))
}
