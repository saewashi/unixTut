### For developers
### When running ponygo, make sure your text has this format: "Text and stuff, newlines are slash n. \n If you have an apostrophe, you'll have to quote it'
### One more time: dollar sign, single quote, text, end single quote. If you need a ' inside, it has to be ' .
### This ensures that the shell interprets your newlines correctly when passed to ponysay.
### If you need to test your string, use echo (no -e)

function dirTut(){
ponygo rainbow "Hey $PONYUSER. So you learned how to cd around, huh? But how do you know where to go? Well, I'll be teaching you more gory details about directories. Let's get started!"
ponygo rainbowfirm "Directories are also called folders. All computers organize their files in structured directories, even your smartphone!"
ponygo rainbow "In Windows, you might be used to finding your documents, pictures, songs and things in \"My Documents\" on your C drive.${n2}The ${b}path${r} to a file might be C:\Users\Rainbow Dash\My Documents\Veggie soup.docx."
ponygo rainbowdrag "On a Mac, you might find your files in /Volumes/Macintosh HD/Users/Rainbow Dash/Documents.${n2}Pictures on my Android phone are in /DCIM/Camera. Get the idea?"
ponygo rainbow "The file structure for my file in Unix is pretty similar:\n\t/home/rdash/recipes/veggie_soup.txt."
ponygo rainbowfly "Notice that there are no spaces in the names of my files or folders in Unix. That is because spaces are a huge pain to deal with."
ponygo rainbowfirm "Good. Now that you know that directories have structure, let's talk about this whole ${b}path${r} concept. You can think of it as walking from a starting point, along a path, to a destination."
ponygo rainbowsalute "Paths can be full or relative. The difference is what you consider your starting point."
ponygo rainbow "A full path uses a fixed point that everyone knows as the starting point. It's like giving directions using a major landmark to orient against."
ponygo rainbow "If you do ${b}cd ../${r} until you get dizzy, you will end up in the mega-parent directory. This directory is called the root directory, and it is denoted by a single forward slash: ${b}/${r}. It's a good landmark because every Unix system has it."
ponyNoClear rainbow "Have you noticed that your location always starts with a ${b}/${r} or a ${b}~${r} when you do ${b}pwd${r}?"
echo "Your current location:"
pwd
read -p "Press enter to continue"
clear
ponygo rainbowfirm "For example, to get to my recipe for vegetable soup, I would start at the root directory, go to home, and then to rdash, and then to recipes, and then there's my file: ${b}/${n}/home${n}/home/rdash${n}/home/rdash/recipes${n}/home/rdash/recipes/veggie_soup.txt${r}"
ponygo rainbowsalute "If my file is in ${b}/home/rdash/recipes${r}, but I'm currently in ${b}/home/ajack19${r}, I can still refer to the file by giving the full path starting from root (${b}/${r}) and all the way to the file name.${n2}${b}/home/rdash/recipes/veggie_soup.txt${r}"
ponygo rainbowfly "I can do this:${nt}${b}ls /home/rdash/recipes/veggie_soup.txt${r}${n2}This would be the same as if I had done:${nt}${b}cd /home/rdash/recipes${r}${nt}${b}ls veggie_soup.txt${r}"
ponygo rainbow "A relative path uses my current location as my starting point.${n2}If I am in ${b}/home/rdash${r}, and my file is in the recipes folder, I could do:${nt}${b}ls recipes/veggie_soup.txt${r}${n2}This is equivalent to the previous methods."
ponygo rainbowfly "If the file is in a directory above me, I would use the ${b}..${r} syntax to say to go up a directory relative to me."
ponygo rainbowfirm "Let's say I am still in ${b}/home/rdash${r}, but my friend wants me to look at her recipe file in:${nt}${b}/home/ajack19/recipes.${r}${n2}I would do the following:${nt}${b}ls ../ajack19/recipes/apple_pie.txt${r}"
ponygo rainbowsalute "That concludes my lesson on directories."
# add note that you don't have to be inside directory to run a command
ponygo rainbowhurricane "Great job, $PONYUSER! Now get out there and be victorious!"
# more about ~, and how it doesn't have /~
# more about ls
#which

echo "dirtutdone:  (Done)" >> ~/.unixTut/config

}

# This is added in case the script is invoked instead of sourced
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    me="$( cd "$(dirname "$0")" ; cd ../ ; pwd -P )"
    source ${UNIXTUT:-$me}/Utilities.sh
    if [[ -z $PONYUSER ]]; then
        checkProgress
    fi
    dirTut
fi