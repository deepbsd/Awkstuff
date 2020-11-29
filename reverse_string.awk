#  Reverse a string
#  
#  For example: input: "cool" output: "looc"
#  
#  Run the tests with:
#  
#  bats reverse_string_test.sh
#  After the first test(s) pass, continue by commenting out or removing the skip annotations prepending other tests.
#  
#  Source
#  Introductory challenge to reverse an input string https://medium.freecodecamp.org/how-to-reverse-a-string-in-javascript-in-3-different-ways-75e4763c68cb
#  
#  Submitting Incomplete Solutions
#  It's possible to submit an incomplete solution so you can see how others have completed the exercise.


BEGIN {
    for (i=0; i<length(ARGV[1]); i++)
        printf "%s",substr(ARGV[1], length(ARGV[1])-i, 1)
    print
}
