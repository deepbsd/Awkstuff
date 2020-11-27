# Determine if a sentence is a pangram. A pangram (Greek: παν γράμμα, pan gramma, "every letter") is a sentence using every letter of the alphabet at least once. The best known English pangram is:
# 
# The quick brown fox jumps over the lazy dog.
# 
# The alphabet used consists of ASCII letters a to z, inclusive, and is case insensitive. Input will not contain non-ASCII symbols.
# 
# Run the tests with:
# 
# bats pangram_test.sh
# After the first test(s) pass, continue by commenting out or removing the skip annotations prepending other tests.
# 
# Source
# Wikipedia https://en.wikipedia.org/wiki/Pangram
# 
# Submitting Incomplete Solutions
# It's possible to submit an incomplete solution so you can see how others have completed the exercise.



BEGIN {
    split("abcdefghijklmnopqrstuvwxyz", alpha, "")

    for (j=0; j<length(alpha); j++){
        if ( index( ARGV[1], alpha[j] ) == 0 )  exit 1
    }
    exit 0
}
