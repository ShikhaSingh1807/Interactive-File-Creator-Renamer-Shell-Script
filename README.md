
# Interactive File Creator & Renamer (Shell Script)

This project is a beginner-friendly shell script that interactively creates and renames files based on user input.

The goal of this repository is twofold:

- Help beginners understand user input, loops, conditions, and file operations in shell scripting

- Showcase my learning journey in Shell Scripting, step by step, through clearly defined milestones

This is Milestone A of the project, and more features will be added incrementally.




## Features (Milestone A)

✔️ Asks the user:

* How many .txt files to create

* How many .jpeg files to create

✔️ Creates the files accordingly

✔️ Asks the user which file type to rename:

* t → .txt files

* j → .jpeg files

✔️ Input validation

* If the user enters anything other than t or j, the script keeps asking until valid input is provided

✔️ Asks for a prefix

* Renames all selected files by adding the prefix to their names

✔️ Written using simple and readable shell scripting constructs, suitable for beginners




## Tech Stack

* Shell / Bash

* Linux / Unix-based environment


## How to Run the Script

**Clone the repository:**

```git clone https://github.com/ShikhaSingh1807/Interactive-File-Creator-Renamer-Shell-Script.git```


**Navigate to the project directory:** 

```cd Interactive-File-Creator-Renamer-Shell-Script```


**Make the script executable:**

```chmod +x Interactive_File_Creator_And_Renamer.sh```


**Run the script:**

```./Interactive_File_Creator_And_Renamer.sh```

## Demo

Below is a sample execution of the script showing how it interacts with the user:

- Prompts the user for the number of `.txt` and `.jpeg` files to create
- Validates user input for file type selection
- Renames files using a user-defined prefix
- In below image user input wrong file type to rename and hence is prompted again and again and finally selects ".txt" as the target file type

![Script Demo](images/ImageWithWrongInput.png)

![Script Demo](images/JPEGRename.png)

## Learning Objectives

This project helps beginners understand:

* Reading user input (read)

* Conditional statements (if, case)

* Loops (while, for)

* File creation and renaming

* Input validation

* Writing interactive scripts


## Project Roadmap

**✅ Milestone A (Current)**

- Interactive file creation

- Input validation

- File renaming with prefix

**🔜 Milestone B (Planned)**

- Add logging to a separate log file

- Each action logged with proper timestamps

**🔜 Milestone C (Planned)**

- Implement log rotation

- If log file exceeds 2 MB, automatically create a new log file
## Contributing

This project is part of my learning journey, and **suggestions are highly encouraged!**

If you have:

- Improvement ideas

- Best practices

- Beginner-friendly optimizations

Please feel free to:

- Open an Issue

- Submit a Pull Request

- Share feedback



## Authors
**🧑‍💻 Shikha Singh**

Learning Shell Scripting, one milestone at a time 🚀


## Learning Journey

This repository reflects my progress as I learn shell scripting. Each milestone represents a step forward in understanding real-world scripting concepts.


