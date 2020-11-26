# usage:  awk -f parsemail.awk emails
BEGIN {
    FS=" "
    OFS="\t\t"
    print "First","Last","Username","Domain"
}
{
    split($4, email, "@")

    print $2,$3,email[1],email[2]
}
