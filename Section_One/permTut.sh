function permTut(){
    # Available applejacks:
    # applejack applejackscarecrow fillyjacktravel fillyjack

    mkdir -p tmptut
    cd tmptut
    mkdir -p castle
    chmod 775 castle
    ponygo applejack "Howdy, $PONYUSER. I'm going to teach you all about users and permissions in Unix.${n2}Let's start by grabbing some supplies from the castle!  Can't have you fight on an empty stomach!"
    ponygo applejackscarecrow "Now that the Princess is missing, we are keeping the castle locked. We'll need to make sure we have ${b}permission${r} to enter.${n2}Unix permissions control who can access files and directories. Let's check to see who has permission to access the castle."

    ponyNoClear fillyjack "Our good ol' trusty ${b}ls -lah${r} can tell us what the permission codes are. Go ahead and try it!"
    getInput 'ls -lah' "Don't give up! Did you remember the dash?"
    #lah="$(ls -lah)"
    #echo "$lah"
    echo "total 12K"
    echo "drwxrwxr-x 3 $USER $USER 4.0K Aug  9 12:25 ."
    echo "drwxrwxr-x 3 $USER $USER 4.0K Aug  9 12:25 .."
    echo "drwxrwx--- 2 princess ponies 4.0K Aug  9 12:25 castle"
    echo "Good job!"
    read -p "Press enter to continue"
    clear

    #lah1="$(ls -lah | tail -n 1)"
    #split="$(echo $lah1 | perl -p -e 's/^(\S+).+/$1/')"
    #ponyNoClear applejack "The first part of each line is the permission code:${n2}${b}$split${r}"
    ponygo applejack "The first part of each line is the permission code:${n2}${b}drwxrwx---${r}"
    #echo "${b}ls -lah | tail -n 1${r}"
    #echo "$lah1"
    #read -n 1 -r -p "Press any key to continue"
    #clear
    #split into three's
    #pretty=$(echo $lah1 | perl -p -e 's/^([-d ]?)([rwx-]{3})([rwx-]{3})([rwx-]{3}).+/$1 $2 $3 $4/')
    #ls -lah castle
    ponygo applejackscarecrow "Let's break the code down into separate parts:${n}${b}d  rwx  rwx  ---${r}${n2}The first letter, ${b}d${r}, means the castle is a ${b}directory${r}."
    ponygo applejack "After the first letter, there are three sections.${n}${b}u:rwx  g:rwx  o:---${r}${n2}The sections represent different permissions for the three different categories of Unix users: the ${b}u${r}ser, the ${b}g${r}roup, and ${b}o${r}ther.${n2}The user owns that file or directory and is usually the one who made it. Groups are defined sets users. Other is everyone else."
    ponygo applejack "In each of the three sections, there are three letters: ${b}rwx${r}.${n2}The letter ${b}r${r} stands for read, ${b}w${r} stands for write, and ${b}x${r} stands for execute. A dash (${b}-${r}) can stand in as a lack of permission."
    ponygo applejackscarecrow "Read permission allows you to read the ${b}contents${r} of that item.${n2}Directories can contain files and other directories; files contain their contents.${n2}To see the name of a file inside a directory requires read permissions of the ${b}directory${r}. Reading what is inside a file requires read permissions of the ${b}file${r}."
    ponygo fillyjack "Write permissions allow you to modify the ${b}contents${r} of the item.${n2}Changing the name of a file requires the ${b}directory${r} it's in to give you write permissions!${n2}It's like you need your parent's permission to change your name if you are underage. The parent or enclosing directory has the line ending with one dot:${n}${b}drwxrwxr-x 3 $USER $USER 4.0K Aug  9 12:25 .${r}" 
    ponygo applejack "To change the contents inside a file, though, you just need write permissions to the file. Take that, Mom n' Dad."
    ponygo applejackscarecrow "Execute permissions on directories mean that you can enter the directory and access its contents.${n2}For files, think of x permissions as making the file into a program, like an .exe file in Windows or a .dmg file on Mac. Most files don't need execute permissions."
    ponygo fillyjacktravel "To put these concepts together, a file can be readable and writeable by the user who owns it, readable by members of the group the file is associated with, and no one else can touch it.${n2}So the file would have permissions ${b}rw- r-- ---.${r}" 
    ponygo applejack "How do you know which group and user a file or folder belongs to?${n}${b}ls -lah${r} lists owner and group after permissions:${n2}drwxrwx--- 2 ${b}princess ponies${r} 4.0K Aug  9 12:25 castle${n2}The owner of the castle (the Princess!) can read, write, and execute (${b}rwx${r}).${n}Anyone in the ponies group can do the same. Everyone not in the ponies group is an \"other\" and is locked out (${b}---${r}) until this crisis is over!"
    ponyNoClear applejack "My name is Applejack, but my username, ajack19, is what gets used for files and directories I own. So, while your name is $PONYUSER, you will need to know your username. You can do this by asking \"who am I\" all run together-like: ${b}whoami${r}.${n2}Go ahead and ask the computer an existential question!"
    getInput 'whoami' 'Try again!'
    whoami
    read -n 1 -r -p "Press any key to continue"
    clear

    ponyNoClear fillyjacktravel "I belong to the ponies group and I'm also in the bookclub group.${n}You can belong to several groups, just like I do. What groups do you belong to? Use the ${b}id${r} command to find out!"
    getInput 'id' 'Try again!'
    id
    read -n 1 -r -p "Press any key to continue"
    clear

    ponygo fillyjack "The Princess still owns the castle, but as a member of team ponies, you have permission to enter without the guards locking us up! Let's get a move on and enter the castle!"
    
    ponyNoClear fillyjacktravel "Let's have look around! Use ${b}ls -lah${r} again to see what is in the castle and where we're allowed to go."
    getInput 'ls -lah' 'Try again!'
    echo "total 20K"
    echo "drwxrwx--- 2 princess ponies 4.0K Aug  9 12:25 ."
    echo "drwxrwxr-x 3 $USER $USER 4.0K Aug  9 12:25 .."
    echo "drwxrwx--- 3 princess ponies 4.0K Aug 9 12:25 kitchen"
    echo "drwxrwx--- 3 princess ponies 4.0K Aug 9 12:25 armory"
    echo "drwx------ 3 princess princess 4.0K Aug 9 12:25 royal_quarters"
    read -n 1 -r -p "Press any key to continue"
    clear

    ponygo applejackscarecrow "Well, we can't go into the Royal Quarters - only the Princess can:${n}${b}drwx------ 3 princess princess 4.0K Aug 9 12:25 royal_quarters${r}${n2}Let's go into the kitchen to grab some grub to fuel our adventure!"

    ponyNoClear fillyjack "Let's see what we can find in this kitchen!"
    echo "total 14K"
    echo "drwxrwx--- 2 princess ponies 4.0K Aug  9 12:25 ."
    echo "drwxrwx--- 3 princess ponies 4.0K Aug  9 12:25 .."
    echo "-rw-rw---- 3 ajack19 ponies 2.0K Aug 9 12:25 apples"
    echo "-rw------- 3 $USER ponies 2.0K Aug 9 12:25 travelpack"
    read -n 1 -r -p "Press any key to continue"
    clear

    ponyNoClear fillyjacktravel "I see you brought your travelpack with you:${n}${b}-rw------- 3 $USER ponies 2.0K Aug 9 12:25 travelpack${r}${n}-rw-rw---- 3 ajack19 ponies 2.0K Aug 9 12:25 apples${n2} I also have my stash of apples I share with the ponies group."
    read -n 1 -r -p "Press any key to continue"
    clear
   ponygo applejack "Keep in mind anyone with ${b}w${r}rite permissions to your files can change your files.${n2}${b}-rw------- 3 $USER ponies 2.0K Aug 9 12:25 travelpack${r}${n}Right now, only you can change your travelpack, since you own it and have ${b}rw${r}, and all other permissions are ${b}-${r}. To allow your groupmates to help you out, we should let them add to your travelpack with read and write permissions."

    ponyNoClear applejackscarecrow "To change the permissions, we use a command called ${b}chmod${r} (change mode). The command needs to know what new permissions you want and what file or directory you want to apply the new permissions to. The command looks like this:${n2}${b}chmod g+r travelpack${r}. ${n}Give it a try!"
    getInput 'chmod g+rw travelpack' 'Try again!'
    read -n 1 -r -p "Press any key to continue"
    clear

    ponyNoClear fillyjacktravel "We used ${b}g+rw${r} to allow the ${b}group${r} to ${b}read${r} and ${b}write${r} to your travelpack. You can revoke permissions the same way using a minus sign instead of a plus sign, like:${n}${b}chmod a-x travelpack${r}${n2}Here I used ${b}a${r} as a shorthand for \"all\", but you could have also done the equivalent:${n}${b}chmod ugo-x travelpack${r}"
    read -n 1 -r -p "Press any key to continue"
    clear
    ponyNoClear fillyjack "Always double check that it did what you intended. Let's see the new permissions:"
    echo "total 14K"
    echo "drwxrwx--- 2 princess ponies 4.0K Aug  9 12:25 ."
    echo "drwxrwx--- 3 princess ponies 4.0K Aug  9 12:25 .."
    echo "-rw-rw---- 3 ajack19 ajack19 2.0K Aug 9 12:25 apples"
    echo "-rw-${b}rw-${r}--- 3 $USER ponies 2.0K Aug 9 12:25 travelpack"
    read -n 1 -r -p "Press any key to continue"
    clear

    ponygo applejack "Alrighty $PONYUSER, now you know how to change who can access your files and what to do if you see an error like ${b}permission denied${r}."
    echo "permtutdone: (Done)" >> ~/.unixTut/config
}

# This is added in case the script is invoked instead of sourced
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    me="$( cd "$(dirname "$0")" ; cd ../ ; pwd -P )"
    source ${UNIXTUT:-$me}/Utilities.sh
    if [[ -z $PONYUSER ]]; then
        checkProgress
    fi
    permTut
fi