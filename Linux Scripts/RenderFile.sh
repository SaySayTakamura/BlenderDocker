# THIS SCRIPT CREATES A CONTAINER AND TELLS BLENDER
# TO RENDER YOUR FILE
#
# STAY ADVISED, YOUR FILES NEED TO BE ON THE RESPECTIVE VOLUME FOLDERS
# SUCH AS: INPUT, OUTPUT, SCRIPTS
# THOSE FOLDERS ARE DIRECTLY CONNECTED TO THE CONTAINER
# ANYTHING YOU DROP THERE WILL BE READABLE FOR BLENDER AND THE CONTAINER
#
# IF YOU NEED TO CHANGE THE FILE OR SCRIPT TO BE LOADED
# UPDATE THE .ENV FILE
#
#
#   MADE BY: ROXANNE 'EDGAR' TAKAMURA   
#
#

source ../.env #sources the .env file for fetching variables
IF=$(echo $render_input_file|sed -r 's/[/]+/_/g') #replaces the forward slash with a underscore
echo "Blender File being loaded - ${IF^^}" #Verbose echo the variable
(cd ../. && exec docker compose run --detach --name="RENDER-${IF^^}" blender-render) #Cals docker compsoe for the service