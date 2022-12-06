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

echo_and_run cd "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/install/lib/python3/dist-packages:/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora" \
    "/opt/anaconda3/bin/python3" \
    "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/src/mavlink_lora/setup.py" \
     \
    build --build-base "/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/build/mavlink_lora" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/install" --install-scripts="/home/zain/Documents/1st_semester/Introduktion til Drone Teknologi/Lektion 11/mavlink/install/bin"
