# My Awk Stuff

I have never learned AWK.  I consider myself fluent in several languages including Bash, 
but I have never sat down to learn AWK.  Oh well, I hope it's never too late!

The first challenge is to fiddle around with fizzbuzz.  The first script is using the 
modulo operator, like most first fizzbuzz attempts in a language.  I'll go further later.

## Uses For Awk

Here are a few choice applications for AWK scripts:

1. Text processing
2. Producing formatted text reports
3. Performing aritmetic operations
4. Performing string operations

## Read, Execute and Repeat

```
BEGIN { awk-commands }
```
or
```
/pattern/ { awk-commands }
```
Also, there can be an END block:
```
END { awk-commands }
```

Awk READS a line from an input stream (file, pipe or STDIN) and stores it in memory.  It
then EXECUTES its commands on that line from the stream.  And then it REPEATS those commands
on the next line from the input stream.


