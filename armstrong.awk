# An Armstrong number is a number that is the sum of its own digits each raised to the power of the number of digits.
# 
# For example:
# 
# 9 is an Armstrong number, because 9 = 9^1 = 9
# 10 is not an Armstrong number, because 10 != 1^2 + 0^2 = 2
# 153 is an Armstrong number, because: 153 = 1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
# 154 is not an Armstrong number, because: 154 != 1^3 + 5^3 + 4^3 = 1 + 125 + 64 = 190
# Write some code to determine whether a number is an Armstrong number.
# 
# Run the tests with:
# 
# bats armstrong_numbers_test.sh
# After the first test(s) pass, continue by commenting out or removing the skip annotations prepending other tests.
# 
# Source
# Wikipedia https://en.wikipedia.org/wiki/Narcissistic_number
# 
# Submitting Incomplete Solutions
# It's possible to submit an incomplete solution so you can see how others have completed the exercise.


BEGIN {
    total = 0
    n = length(ARGV[1])
    split(ARGV[1], numbers, "")

    for (i=1; i<=n; i++){
       total += numbers[i] ^ n
    }
    print  (total == ARGV[1]) ? "true" : "false"
}


