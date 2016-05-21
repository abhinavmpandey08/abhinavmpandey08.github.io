void import processing.opengl.*;
import javax.media.opengl.*;

PGraphicsOpenGL pgl;
GL gl;

void setup() {
	size( 300, 300, OPENGL );
	colorMode( RGB, 1.0 );
	hint( ENABLE_OPENGL_4X_SMOOTH );
	pgl = (PGraphicsOpenGL) g;
	gl = pgl.gl;
	gl.setSwapInterval(1);
	initGL();
	
}

void draw() {
	pgl.beginGL();
  	
	pgl.endGL();
	getOpenGLErrors();

	ellipse(100, 100, 100, 100);
}

void initGL() {
	
}

void getOpenGLErrors() {
  int error = gl.glGetError();
  switch (error) {
    case 1280 :
      println("GL_INVALID_ENUM - An invalid enumerant was passed to an OpenGL command.");
    break;
    case 1282 :
      println("GL_INVALID_OPERATION - An OpenGL command was issued that was invalid or inappropriate for the current state.");
    break;
    case 1281 :
      println("GL_INVALID_VALUE - A value was passed to OpenGL that was outside the allowed range.");
    break;
    case 1285 :
      println("GL_OUT_OF_MEMORY - OpenGL was unable to allocate enough memory to process a command.");
    break;
    case 1283 :
      println("GL_STACK_OVERFLOW - A command caused an OpenGL stack to overflow.");
    break;
    case 1284 :
      println("GL_STACK_UNDERFLOW - A command caused an OpenGL stack to underflow.");
    break;
    case 32817 :
      println("GL_TABLE_TOO_LARGE");
    break;
  }
}