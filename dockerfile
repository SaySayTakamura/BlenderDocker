#Blender for Docker
#by: Roxanne "Edgar" Takamura
#
#Date: 10/03/2025 - 20:00
#Last Revision Date: 10/03/2025 - 20:00
#
#Base taken from: https://github.com/alexisrolland/blender-docker

#Import Fedora Linux image as BASE OS
FROM fedora:latest

#Update the OS and install overall dependencies
RUN dnf -y update
RUN dnf -y install \
curl \
freetype \
mesa-libGLU \
libXi \
libXrender \
libXxf86vm-devel \
libXfixes-devel \
mesa-libGL-devel \
libxkbcommon-devel \
libSM-devel \
openal-soft-devel \
libpng-devel \
libjpeg-turbo-devel \
blosc \
libdeflate-devel \
openxr-devel \
imath \
alembic-devel \
opensubdiv-devel \
OpenColorIO-devel \
minizip-ng-devel \
llvm18 \
intel-gmmlib \
intel-ocloc \
libaom \
fribidi \
harfbuzz \
libshaderc \
mesa-vulkan-drivers \
intel-igc \
intel-igc-devel \
wayland-devel \
egl-wayland \
egl-wayland-devel \
weston \
libdecor \
wayland-protocols-devel \
mesa-libEGL \
mesa-libEGL-devel \
mesa-libGL \
mesa-libGL-devel \
oidn \
usd \
usd-devel \
embree \
openjpeg \
openvdb \
openshadinglanguage-common-headers \
OpenImageIO \
OpenImageIO-devel
RUN dnf -y autoremove

#Basic Arguments
ARG blender_package_name
ARG blender_package_url
ARG blender_path

#Blender download
WORKDIR /tmp
RUN curl -OL $blender_package_url

#Uncompress and Install Blender
RUN tar -xJf /tmp/${blender_package_name}.tar.xz -C /tmp \
    && rm -f /tmp/${blender_package_name}.tar.xz \
    && mv /tmp/${blender_package_name} ${blender_path}