# Convert a phrase to its acronym.
# 
# Techies love their TLA (Three Letter Acronyms)!
# 
# Help generate some jargon by writing a program that converts a long name like Portable Network Graphics to its acronym (PNG).

# Note: I currently have this so the words must be separate arguments on the command line.  If there were one argument as a string,
# I could easily parse that into an array by using split()

BEGIN { 
   result=""
   for (i=1; i<=ARGC; i++) {
       result = result substr(ARGV[i], 1, 1)
   }
   printf "%s\n",toupper(result)
}
