#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/yedi/ros_ws/src/learning_ros_external_pkgs_noetic/baxter_examples"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/yedi/ros_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/yedi/ros_ws/install/lib/python3/dist-packages:/home/yedi/ros_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/yedi/ros_ws/build" \
    "/usr/bin/python3" \
    "/home/yedi/ros_ws/src/learning_ros_external_pkgs_noetic/baxter_examples/setup.py" \
     \
    build --build-base "/home/yedi/ros_ws/build/learning_ros_external_pkgs_noetic/baxter_examples" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/yedi/ros_ws/install" --install-scripts="/home/yedi/ros_ws/install/bin"
