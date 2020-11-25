#  usage:  awk -f random.awk -v min=1 -v max=100
#
#  usage 2: awk -f random.awk -v min=1 -v max=100 -v seed="$(od -An -N4 /dev/urandom)"
#
#  If you play around with this you'll notice a lot of duplicate numbers showing up
#  That's because the srand() function uses a timestamp by default as the random seed.
#  If you repeat the command fast enough, the "random" seed will not be able to change
#  fast enough to introduce entropy into the random number generator, and you'll see
#  the same seed appear again.  You can pass an argument to the srand() argument that
#  contains lots of entropy.
#
#  Another approach is to use one of the many sources of RAND numbers on a UNIX system.
#  One of my favorites is octal dumping (od) the contents of /dev/urandom

BEGIN {
    srand(seed+0)
    randnum = int( min + rand() * (max - min + 1)  )
    printf "%d\n",randnum
}
