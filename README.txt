This repository provides descriptions (sourced from Cornell Dining) for each of the dining locations at Cornell in a single JSON file. (This will be used for the Big Red App)

Here is an example member of the JSON object (final.json):
"cascadeli": {
        "description": "Named after the beautiful Cascadilla Gorge running through campus, Cascadeli is a caf\u00e9 and deli located on the main floor of Willard Straight Hall.  \n\nEnjoy made-to-order deli sandwiches, hot daily soups, salads, and desserts. Cascadeli also now offers Cornell Street Cart Hot Dogs year 'round! If the weather's nice, our balcony offers the most picturesque place to eat on campus, with distant views of the lake and hills.",
        "menu": "Deli and Hot Sandwiches, Subs, Soup, Cookies, Pepsi Beverages, and Grab-n-Go items",
        "what": "a caf\u00e9/deli in Willard Straight Hall"
    }

To make any changes:
- Edit the relevant files in the locations directory. Each location has its own file, formatted with three sections ('what', 'description', and 'menu') separated with two blank lines.
- If a new location needs to be added, add it to the locations.txt file and run the make_files.bash script.
- When done, run the make.bash script to update the final.json file.
- Or... just ask me to update it! You can email me (Matthew Gharrity) at my cornell email address: mjg355
