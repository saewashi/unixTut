function findTut(){
ponygo twilacorn "We talked up the capabilities of Unix for making repetitive tasks easy. One critical command you should know is ${b}find${r}."
ponygo twilight "${b}Find${r} is a command that lets you search for files by name, by type, by the last time it was changed, and more.${n2}It doesn't look at file contents, though."
ponygo twilightfly "To use ${b}find${r}, you will need to give it a starting point and then some criteria for searching. The easiest starting point is the current directory, denoted by a single dot (${b}.${r}). "
ponygo twilightspike "The criteria which are most useful for filtering searches are ${b}-name${r}, ${b}-type${r}, ${b}-size${r}, and ${b}-mtime/ctime/atime${r}."
ponygo twilighttime "Of those filters, the ${b}-name${r} parameter is probably the most widely used. You can find files with particular names, but what is even more helpful is to use the wildcard character, an asterisk (${b}*${r}), which can stand for 0 or more characters."
ponygo twilight "For example, if I wanted to search for my music, I might try the following command:${n}${b}find . -name \"*.mp3\"${r}${n2}This will return all the mp3s I have from my current directory on down."
ponygo twilight "You can put multiple stars ( ${b}*${r} ) in your search too! So I can look for music with names that contain \"Twilight\" by doing:${n}${b}find . -name  \"*Twilight*.mp3\"${r}${n}This allows, but does not require, characters in front of or after \"Twilight\"."
ponygo twilight "Did you notice the single dash in front of ${b}-name${r}? ${b}Find${r} cheats. It only uses one dash even though it uses long words, which makes it a little odd for a Unix program."
ponygo twilightzero "One last thing; make sure that you put \"quotes\" around whatever name you are searching for with find."
ponygo twilightprincess "That's it! It might take a few tries to get the syntax just right, but it's totally worth it when you can easily search your files."
echo "findtutdone:  (Done)" >> ~/.unixTut/config
}
# This is added in case the script is invoked instead of sourced
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    me="$( cd "$(dirname "$0")" ; cd ../ ; pwd -P )"
    source ${UNIXTUT:-$me}/Utilities.sh
    if [[ -z $PONYUSER ]]; then
        checkProgress
    fi
    findTut
fi