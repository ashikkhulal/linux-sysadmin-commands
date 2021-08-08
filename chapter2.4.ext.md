# **Chapter 2.4 extn: Vim Lab**

## **Vim Simple Navigation**

    1. Go to the top of the file with gg.
    2. Go to the bottom of the file with G.
    3. Go to line 25 with 25G.
    4. Go to 50% of the way through the file with 50%.
    5. Go to the top with gg.
    6. Press w 5 times to move forward 5, then gg to return to the top of the file.
    7. Press 25w to move forward 25 words, then 5b to move backwards 5 words.
    8. Use h,j,k,l to move around, then use the cursor keys.
    9. Press gg to go to the top.
    10. Use /<word>, ENTER to find the first instance of that <word>.
    11. Use n to go to the next and subsequent instances.
    12. Use N to go back to previous instances.
    13. Go to the bottom of the file using G.
    14. Use ?help to search backwards.
    15. Exit without saving using q!.
## **Inserting, Copying, and Deleting Text**
    1. Go to the top of the file with gg and then navigate to the line that starts with Get out of Vim.
    2. Press o to add a line under the current line.
    3. On that line, add the following text, taking care to line up the : with the other instances of : on other lines:
    4. ATTENTION:  Do NOT Reboot to Exit Vim!
    5. When added, hit the ESC key to return to Command Mode, and use ^ to go back to the front of the word ATTENTION. Then press 0 (zero) to go to the very beginning of the line.
    6. Next, place the cursor on the empty line between your current line and the one that reads Jump to a subject, and delete the empty line by pressing dd.
    7. Now copy the ATTENTION line by moving to it and pressing yy.
    8. Go to line that starts with Jump Back and use p to paste the copied line below it.
    9. Then place your cursor on the blank line in between the current line and the one that begins with Get specific help and press the yy keys to copy the blank line.
    10. Next create four more blank lines by using 4p.
    11. Now highlight or select all of the blank lines, except the last one, before Get specific help by putting your cursor on the top blank line, pressing V and moving your cursor to the next-to-last blank line (selecting four lines). Delete those lines by pressing d once.
    12. While on the remaining blank line below the copied line (the one beginning with ATTENTION:), press i to enter Insert Mode and use the spacebar to insert spaces until the cursor is under the D in Do NOT. Add the text You'll Regret it!, and press ESC to return to Command Mode.
    13. Move the cursor to the line above the current one, which puts your cursor in between the words to and Exit on that line, and press J to join the line below to the end of the current line.
    14. Undoing and Redoing
    15. Now undo your changes one at a time by pressing u. You'll tire quickly of this, so hold down the u key until all changes to the file are reversed.
    16. When you have reached the last undo possible, you will see the status line reflect with the text Already at oldest change.
    17. Restore all changes to the file by pressing Ctrl-r repeatedly, noting what each "change" is made up of, and also what the status line says about how many changes were made.
    18. When all changes have been redone, you'll see Already at newest change.

## **Saving and/or Exiting**
    a. Save your changed buffer to a new file by typing:
            :w ~/<newfilename>.txt
    c. Look to see if you are in that buffer, or in the old buffer by pressing:
            Ctrl-g
    e. Confirm that there is only a single buffer, and that it's the vimhelp.txt buffer, including changes, with:
            :ls
    g. Press ENTER and exit the changed buffer without saving any changes with:
            :q!

## **Resources for Getting Help**
    1. Run vim with no file argument:
            vim
    2. In Command Mode, use :help to get into Help Mode.
    3. Press q to quit. Wait a minute, it didn't quit. Press q again. That didn't work either. And now there's a message about recording @q! No worries. Press q again to get rid of that. Exit Help Mode with :q, just to show Vim you can!
    4. Invoke help for how to move around with :h motion.
    5. Peruse the text, then press the Ctrl-f key combo (or Page Down) to move a screen forward, then use Ctrl-b (or Page Up) to move back a screen.
    6. While in the motion help page, bring up the help for Ctrl-f with :h Ctrl-f and read about that.
    7. Look up the help for how to load Vim with just its defaults, so when something goes wrong you can troubleshoot it with :h --clean.
    8. When done, quit out of Help Mode with :q and completely out of Vim with by pressing ESC to ensure you're in Command Mode, then :q! to completely exit.