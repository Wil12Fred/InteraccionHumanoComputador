#ESTA COMPILACIÓN ES PARA EL SISTEMA OPERATIVO OS X
c++ -o client -std=c++11 client.cc -I./ -I./Leap -I./Model -Wno-deprecated -framework GLUT -framework OpenGL /usr/local/lib/libLeap.dylib -lpng
if [ $? -ne 0 ]; then 
	echo "compilation error"
else
	install_name_tool -change @loader_path/libLeap.dylib ../lib/libLeap.dylib client
	./client
fi
