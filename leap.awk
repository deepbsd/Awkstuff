#  Given a year, report if it is a leap year.
#  
#  The tricky thing here is that a leap year in the Gregorian calendar occurs:
#  
#  on every year that is evenly divisible by 4
#    except every year that is evenly divisible by 100
#      unless the year is also evenly divisible by 400
#  For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.
#  
#  If your language provides a method in the standard library that does this look-up, pretend it doesn't exist and implement it yourself.
#  
#  Notes
#  Though our exercise adopts some very simple rules, there is more to learn!
#  
#  For a delightful, four minute explanation of the whole leap year phenomenon, go watch this youtube video.
#  
#  Run the tests with:
#  
#  bats leap_test.sh
#  After the first test(s) pass, continue by commenting out or removing the skip annotations prepending other tests.
#  
#  Source
#  JavaRanch Cattle Drive, exercise 3 http://www.javaranch.com/leap.jsp
#  
#  Submitting Incomplete Solutions
#  It's possible to submit an incomplete solution so you can see how others have completed the exercise.

function usage(){ print "Usage: leap.sh <year>"; exit 1; }

BEGIN {
    if ( ARGC != 2 ) usage()
    else if ( match(ARGV[1], /^[0-9]{4}$/) != 1 ) usage()
    else if ( ARGV[1] % 400 == 0 ) print "true"
    else if ( ARGV[1] % 100 == 0 ) print "false"
    else if ( ARGV[1] % 4 == 0 ) print "true"
    else print "false"
}
