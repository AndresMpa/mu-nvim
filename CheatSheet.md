# Cheat sheet

### Native

> Note
> If you already know about vim or nvim, skip this until next "files" item; this is like a tutorial

#### Motion

| Action                                               | Command           |
| ---------------------------------------------------- | ----------------- |
| Move up (Add a number to jump # lines, default 1)    | #k or arrow up    |
| Move down (Add a number to jump # lines, default 1)  | #j or arrow down  |
| Move left (Add a number to jump # lines, default 1)  | #l or arrow left  |
| Move right (Add a number to jump # lines, default 1) | #h or arrow right |

#### Writting

| Action  | Command               |
| ------- | --------------------- |
| Insert  | i or a or o or s      |
| Replace | r or R                |
| Visual  | v                     |
| Copy    | y                     |
| Paste   | p or P                |
| Undo    | u                     |
| Delete  | x or #d + space or dd |
| Search  | # + n or /query + n   |

> Tip
> That's enough for beginners, skip until "Files" if you're lazy

#### Lines

| Action                                             | Command           |
| -------------------------------------------------- | ----------------- |
| Move to the end of a word # tines (Default 1)      | #e                |
| Move forward a number # of words (Default 1)       | #w                |
| Move backward a number # of words (Default 1)      | #b                |
| Move forward a WORD (any non-whitespace characters | W                 |
| Move the end of current line                       | $                 |
| Move to the beginning of the line                  | 0 or vertical bar |
| Move to the first non-blank character of the line  | ^                 |
| Move to # column                                   | # + Vertical bar  |

#### Jumping

| Action                                                | Command                       |
| ----------------------------------------------------- | ----------------------------- |
| Jump to beginning of file                             | gg or 1G                      |
| Jump to end of file                                   | G                             |
| Jump to any # line                                    | #G                            |
| Jump # screen lines in direction (up,down,left,right) | #g + direction {j, k, h, l}   |
| Move # pages up                                       | # + page up or # + ctrl + b   |
| Move # pages dowm                                     | # + page dowm or # + ctrl + f |
| Jump to the top of the screen                         | H                             |
| Jump to the middle of the screen                      | M                             |
| Jump to the bottom of the screen                      | B                             |
| Jump between sentences                                | ( or )                        |
| Jump between paragraph                                | { or }                        |
| Jump between closing brace                            | %                             |

#### Scrolling

| Action             | Command  |
| ------------------ | -------- |
| Scroll 50% up      | ctrl + d |
| Scroll 50% down    | ctrl + u |
| Scroll 100% up     | ctrl + f |
| Scroll 100% down   | ctrl + b |
| Scroll 1 line up   | ctrl + e |
| Scroll 1 line down | ctrl + y |

#### Marks

| Action                                                               | Command |
| -------------------------------------------------------------------- | ------- |
| Set mark x at the current cursor position                            | mx      |
| Jump to the beginning of the line of mark                            | 'x      |
| Jump to the cursor position of mark x                                | `x      |
| Return to the line where the cursor was before the latest jump       | "       |
| Return to the cursor position before the latest jump (undo the jump) | ``      |
| Jump to the last-changed line                                        | '.      |
| Jump to last edited                                                  | g;      |

---

#### Files

| Action                                     | Command            |
| ------------------------------------------ | ------------------ |
| Keep the file (Auto save can be activated) | space + w          |
| Quit nvim (or vim)                         | space + q          |
| History                                    | space + h          |
| Split                                      | space + v + j      |
| Vertical split                             | space + v + k      |
| Rezice                                     | space + { + or - } |

#### Buffers

> Tip
> Buffers are basically the files that you have opened; when you open a file it "appends" itself to a "queue", you can switch between those file like next, before and remove from this "queue" of opened files using the next commands

| Action                               | Command   |
| ------------------------------------ | --------- |
| Next file                            | space + j |
| Previous file                        | space + k |
| Delete the current file from buffers | space + h |

---

### Plugins (Can be edited)

> Note
> "Plug" is the plugin manager that I use to manage my plugins, it means that if you are using other, you will have to replace the commands in the next table

#### Plugin Manager

| Action  | Repeat each                                  | Command       |
| ------- | -------------------------------------------- | ------------- |
| Install | Each time you add a plugin                   | space + p + i |
| Clean   | Each time you remove a plugin                | space + p + c |
| Update  | At least once a year                         | space + p + u |
| Upgrade | When you remember to do it (I forget it too) | space + p + d |

#### Plugins

| Action                    | Command                   |
| ------------------------- | ------------------------- |
| Search words in the file  | / or ?                    |
| Replace content           | space + R                 |
| Move to a concrete letter | space + s + s             |
| Move to croncrete file    | space + s + f             |
| Open file folder          | space + n                 |
| Toggle file folder        | space + n + t             |
| Open current file folder  | space + n + c             |
| Search files anywhere     | space + f + f             |
| Search files by extention | space + f + t             |
| Moving with ACK           | space + a                 |
| Git init                  | space + g + i + i         |
| Git show                  | space + g + s + h         |
| Git blame                 | space + g + b + l         |
| Git commit                | space + g + c             |
| Git status                | space + g + s + t         |
| Git add --all             | space + g + a + a         |
| Git remote -v             | space + g + r + v         |
| Git remote --add          | space + g + r + a         |
| Git pull origin dev       | space + g + p + l         |
| Git push origin dev       | space + g + p + s         |
| Git check + <branch>      | space + g + c + k         |
| Git check -b + <branch>   | space + g + n + b         |
| Git add some files        | space + g + c + c + a + a |
| Git pull a branch         | space + g + c + c + p + l |
| Git push a branc          | space + g + c + c + p + s |


