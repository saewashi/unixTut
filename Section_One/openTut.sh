function openTut(){
    ## Available ponies:
    # rarity raritycomplaining raritydrama fillyrarity rarityelite rarityfly raritygala rarityponder
    export nbsp=$'\xC2\xA0'
    ponygo rarityelite "Ok $PONYUSER, I'm going to tell you about opening files in Unix."
    ponygo raritycomplaining "On computers with windows and mouse clicks, double-clicking a file opens it with an appropriate program. In Unix, you have to invoke the program first, not the file."
    ponygo rarityponder "To play music, you would have to have a music program installed and you would have to call the program just like you do any command, such as ${b}ls${r}.${n}To open a text file, you have to call a command that can read text files.${n2}Since dealing with text files is so common in Unix, let's start by just learning how to open them."
    ponygo rarityelite "The program I like for opening text files is called ${b}less${r}. To run it, you type in ${b}less${r} followed by the name of the file you want to open. For example,${n}${b}less starbucks.txt${r}${n}opens a file with all of my favorite coffee flavors."
    ponygo rarityfly "Once you have your file opened, you can use the arrow keys to scroll up and down in the file. There are a lot of shortcuts in ${b}less${r} that will make your life easier! First and foremost, typing ${b}h${r} inside of ${b}less${r} will bring up the help menu."
    ponygo rarityponder "Do you remember doing the gentle introduction? Let's review some navigating shortcuts:${nt}Use ${b}ctrl+f${r} to scroll forward a page;${nt}${b}ctrl+b${r} to scroll back a page;${nt}${b}escape+<${r} to go to the beginning of a document;${nt}and ${b}escape+>${r} to go to the end of the document."
    ponygo rarityelite "Other useful commands to know are: ${nt}${b}q${r} to quit;${nt}${b}-N${r} to show line numbers on each line;${nt}${b}line number followed by g${r} to go to a certain line. For example, to go to line 42 I would type ${b}42g${r}."
    ponygo rarityfly "You can search inside of ${b}less${r} by using the ${b}/${r} key followed by some text you want to search for. This only looks for that text in one direction, though; to search backwards, use the ${b}?${r} key followed by some text to search for.${n2}Searching in ${b}less${r} is case-sensitive, but you can use stars (${b}*${r}) as wildcards in your search."
    ponygo fillyrarity "Similarly to the way the command line allows you to use up and down arrow keys to show your command history, in ${b}less${r} you can also use the arrow keys when using ${b}/${r} or ${b}?${r} to bring up previous things you've looked for. You can use ${b}/<up arrow>${r} repeatedly to keep searching for the next occurence in the document this way."
    ponygo raritygala "That's all I have for you for editors and opening files. Are you feeling ready for the dungeon?"
    #read -n 1 -r -p "Press any key to continue"
    #echo ""
    echo "opentutdone: (Done)" >> ~/.unixTut/config
#less
#nano?
#what to do if you vim by accident
# navigating
#man pages
}

# This is added in case the script is invoked instead of sourced
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    me="$( cd "$(dirname "$0")" ; cd ../ ; pwd -P )"
    source ${UNIXTUT:-$me}/Utilities.sh
    if [[ -z $PONYUSER ]]; then
        checkProgress
    fi
    openTut
fi