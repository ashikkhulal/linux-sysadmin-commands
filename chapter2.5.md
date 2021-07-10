# **Chapter 2.5: Editing Text Files Using vi/vim**

// to create and edit a file or just edit an existing file

    $ vi <filename>
    $ vim <filename>

Vi/Vim has three modes: **command**, **insert** and **Esc** modes

**In command mode:**
- use dd to delete a line
- use x to delete a single character
- alternatively we can use 10x to use 10 characters
- use r and a character to overwrite in a space
- use u to undo
- use . to repeat an action
- use O to add line above
- use o to add line below

**To enter an insert mode, use `i`**

**To quit an insert mode, use `Esc` :**
- :w to write
- :w <new_file_name> to write into a new file
- :q to quit
- :wq to write and quit
- :wq! to write and quit forcefully