# THIS SCRIPT BUILDS THE BLENDER-DOCKER IMAGE
# THIS RESULTS IN A CONTAINER NAMED 'BUILDER'
# AFTER THE IMAGE THIS SCRIPT WILL DEAL WITH IT
# BY STOPPING AND REMOVING THE CONTAINER
#
#
#   MADE BY: ROXANNE 'EDGAR' TAKAMURA   
#
#
# Note: this is merely a replacement for the 'docker build' command
# As i gain experience i might switch from this docker compose to the docker build one

echo "- BUILDING IMAGE -"
(cd ../. && exec docker compose run --detach --name=BUILDER blender-build)
echo "- DONE -"

echo "- STOPPING BUILD CONTAINER -"
docker stop BUILDER
echo "- CONTAINER STOPPED -"
echo "- DELETING CONTAINER -"
docker rm -f BUILDER
echo "- CONTAINER DELETED -"
echo "- IMAGE BUILT -"
echo "- DONE -"