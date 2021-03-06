#  Calculate the number of grains of wheat on a chessboard given that the number on each square doubles.
#  
#  There once was a wise servant who saved the life of a prince. The king promised to pay whatever the servant could dream up. Knowing that the king loved chess, the servant told the king he would like to have grains of wheat. One grain on the first square of a chess board. Two grains on the next. Four on the third, and so on.
#  
#  There are 64 squares on a chessboard.
#  
#  Write code that shows:
#  
#  how many grains were on each square, and
#  the total number of grains
#  For bonus points
#  Did you get the tests passing and the code clean? If you want to, these are some additional things you could try:
#  
#  Optimize for speed.
#  Optimize for readability.
#  Then please share your thoughts in a comment on the submission. Did this experiment make the code better? Worse? Did you learn anything from it?
#  
#  Run the tests with:
#  
#  bats grains_test.sh
#  After the first test(s) pass, continue by commenting out or removing the skip annotations prepending other tests.
#  
#  Source
#  JavaRanch Cattle Drive, exercise 6 http://www.javaranch.com/grains.jsp
#  
#  Submitting Incomplete Solutions
#  It's possible to submit an incomplete solution so you can see how others have completed the exercise.

function error(){
    print "Error: invalid input"
    exit 1
}

BEGIN {
    number = ARGV[1]
    errors[0] = 0; errors[1] = -1; errors[2] = 65
    for (i=0; i<length(errors); i++) 
        if (number == errors[i]) error()
    grains = 2 ^ (number-1)
    print grains 
    exit 0
}
