# Bob is a lackadaisical teenager. In conversation, his responses are very limited.
# 
# Bob answers 'Sure.' if you ask him a question.
# 
# He answers 'Whoa, chill out!' if you yell at him.
# 
# He answers 'Calm down, I know what I'm doing!' if you yell a question at him.
# 
# He says 'Fine. Be that way!' if you address him without actually saying anything.
# 
# He answers 'Whatever.' to anything else.
# 
# Run the tests with:
# 
# bats bob_test.sh
# After the first test(s) pass, continue by commenting out or removing the skip annotations prepending other tests.
# 
# Source
# Inspired by the 'Deaf Grandma' exercise in Chris Pine's Learn to Program tutorial. http://pine.fm/LearnToProgram/?Chapter=06
# 
# Submitting Incomplete Solutions
# It's possible to submit an incomplete solution so you can see how others have completed the exercise.


BEGIN {
    gsub(/ /, "", ARGV[1])
    textin = ARGV[1]

    if ( textin == "" ) { print "Fine.  Be that way!" ; exit 0 }
    if ( textin == toupper(textin) && match(textin, /[A-Z]+/) > 0  ) { print "Whoa, chill out!" ; exit 0 }
    if ( index(textin, "?" ) == length(textin) )  { print "Sure." ; exit 0 }
    print "Whatever." ; exit 0
}
