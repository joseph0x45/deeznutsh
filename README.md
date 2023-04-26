# DeezNutsh
A collection of bash functions to make developers life easier

# Installation
Installing nutsh on your machine is as simple as running this command 
```sh
curl -L cdn.reexlabs.com/deeznuts | bash
```
It will download the required files on your machine and place them under $HOME/nutsh. The next step is to add this line
```sh
source ./nutsh/nut.sh
```
to your .bashrc, or you can add a relative path to the nutsh folder if your .bashrc is in another directory.
After that run
```sh
nut --version
```
it should output the version of nutsh. If it doesn't then make sure that each step of the installation process went well or open an issue and I will fly to your help.

## Updating and uninstalling
You can run  `nut self remove` to uninstall nutsh from your computer
And you can run `nut self update` to update it

# Usage
These are the commands exposed by nutsh. Feel free to contribute if you have some cool bash snippets to share with us all.

### gitpush
The `gitpush` command is just a shortcut that stages all your files, commit them and push to version control.
Usage: `gitpush "commit message"`

### youtube
Opens a youtube results page in your browser 
Usage: `youtube "search query"`

### google
Opens a google results page in your browser
Usage: `google "search query"`

### dn_get
Sends a get request to a specified url
Usage: `dn_get "url"`


### dn_<post/put/patch/delete>
Sends a post/put/patch/delete request to a specified url, you can also specify headers and a request body. By default the content type header is "application/json"
Usage: `dn_<verb> "url" "optional_content_type" "optional_request_body"`


