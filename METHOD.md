## METHOD TO FIX IF BROKEN BY UPDATE:
- run bat to copy all the new livery folders
- use readme to go in and delete all irrelevant folders copied
- use atom to open the copy root folder as project folder
- find in project by regex according to the string<br>
  `\-?\-?countries[\ ?]=[\ ?]\{([^}]+)\}`
- replace all with empty string
- find in project by the string
  countries
- open each file matched, and rerun the search of the regex string above
- replace with empty string
- sometimes you will get only a partial match, in those cases of course delete it manually<br><br>
If you want to automate any of this with a batch process, pull requests are welcomed!
