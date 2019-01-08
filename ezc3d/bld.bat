mkdir build
cd build

cmake ../^
    -G"Visual Studio 15 2017 Win64"^
    -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%"^
	-DBUILD_EXAMPLE=OFF^
	-DBINDER_MATLAB=OFF^
    -DBINDER_PYTHON3=ON^
    -DPython3_EXECUTABLE="%PREFIX%/python.exe"

cmake --build ./^
    --config Release^
    --target install