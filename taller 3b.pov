#include "colors.inc"
#include "textures.inc"


//Nombre: Gilberto Pineda

//posicion de la camara
camera {
    location <0, 1, -4>//X Y Z
    look_at <0, 2, 0>
    angle 80
  }
  light_source { <10, 10, -10> White }
  
  
  //figura geometrica para el color
  ovus {
    1,0.5
    pigment { color rgb <1, 1, 1> }
    finish { ambient 0.2 diffuse 0 reflection 0.7 }
    translate<0,2,0>
  }
  
  sky_sphere {
    pigment {
      gradient y
      color_map {
        [0 color Green]
        [1 color SlateBlue]
      }
      scale 2
      translate -1
    }
  }
