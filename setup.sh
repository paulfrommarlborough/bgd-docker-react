docker login barkleygooddogcr.azurecr.io

# tag our local container.  login barkleygooddogcr

docker tag bgd-react:v2  barkleygooddogcr.azurecr.io/bgd-react
docker push barkleygooddogcr.azurecr.io/bgd-react

docker pull  barkleygooddogcr.azurecr.io/bgd-react


