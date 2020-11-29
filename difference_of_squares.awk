#  Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.
#  
#  The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)² = 55² = 3025.
#  
#  The sum of the squares of the first ten natural numbers is 1² + 2² + ... + 10² = 385.
#  
#  Hence the difference between the square of the sum of the first ten natural numbers and the sum of the squares of the first ten natural numbers is 3025 - 385 = 2640.
#  
#  Run the tests with:
#  
#  bats difference_of_squares_test.sh
#  After the first test(s) pass, continue by commenting out or removing the skip annotations prepending other tests.
#  
#  Source
#  Problem 6 at Project Euler http://projecteuler.net/problem=6
#  
#  Submitting Incomplete Solutions
#  It's possible to submit an incomplete solution so you can see how others have completed the exercise.

function square_of_sums(){
    sum = 0
    for (i=1; i<=ARGV[1]; i++)
        sum = sum + i
    return sum * sum
}

function sum_of_squares(){
    sum = 0
    for (i=1; i<=ARGV[1]; i++)
        sum = sum + (i ^ 2)
    return sum
}

BEGIN {
    sq = square_of_sums()
    sm = sum_of_squares()

    switch (ARGV[2]) {
        case "" :
            print sq - sm
            exit 0
        case "-S" :
            print sq
            exit 0
        case "-s" :
            print sm
            exit 0
    }
}
