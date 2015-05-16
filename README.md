# gitbaby
a script that manages my local git repos</br>

This script keeps your local git repos in a simple text file that is located in `~/scripts/gitbaby/gitRepos` </br>
So the script will assume that the file exists in that particular directory. </br>
If you place the gitRepos file elsewhere you'll have to modify the script accordingly.

##Installation
make sure the script has an execute permession: </br>
`chmod +x tarbaby.sh` </br>
To install the script (gitbaby.sh) you should place it in `~/scripts/gitbaby/` (or any other directory of your choice). </br>
and then add the following alias to your .bashrc: </br>
`alias gitbaby='. $HOME/scripts/gitbaby/gitbaby.sh'` </br>
(or maybe you wanna change the path in the alias according to where you placed the gitbaby.sh) 

##Sample Usage
`gitbaby init nameOfTheRepo` </br>
**what it does:** this initializes a git repo at the currect directory and adds it to our gitRepos with the name provided. </br>

`gitbaby ls` </br>
**what it does:** lists local git repos that are added in the gitRepos file. </br>

`gitbaby cd nameOfRepo` </br>
**what it does:** `cd /path/to/repo/associated/with/nameOfRepo`

`gitbaby add /path/to/repo/ nameOfTheRepo` </br>
**what it does:** it adds the repo located in /path/to/repo to the gitRepos file with the name specified. </br>

##TODO:
* we need a removal mechanism, to remove deleted repos from the gitRepos file. </br>
* we also need to validate inputs before the script can execute.
