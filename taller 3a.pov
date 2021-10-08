#include "colors.inc"
#include "textures.inc"

//Nombre: Gilberto Pineda
//posicion de la camara
camera{
location <0,6,-20>
look_at 0
}
 
//fuente de luz 
light_source{<500,500,-1000> White}



//dise�o del suelo tipo maincra
plane{
y,-1.5
//pigment{checker ForestGreen  } 
// pigment { hexagon Green, White, Yellow }
 pigment {
    hexagon 
    pigment { ForestGreen },
    pigment { Green },
    pigment { MediumSpringGreen }
    turbulence 1.5
  }  
  
} 

//Figurita facha 
superellipsoid{ <2.50,2.50>

  texture{ pigment{ marble scale 0.6 turbulence 1.15 }
           finish { phong 1}
         }
  scale <2.5,2.5,2.5>
  rotate<0,0,0>
  translate<0,5,0>
}  


//para las nubes    
plane{<0,1,0>,1 hollow
       texture{
        pigment{ bozo turbulence 0.97
          color_map {
           [0.00 rgb <0.2, 0.3, 1>*0.5]
           [0.50 rgb <0.2, 0.3, 1>*0.8]
           [0.70 rgb <1,1,1>]
           [0.85 rgb <0.25,0.25,0.25>]
           [1.0 rgb <0.5,0.5,0.5>]}
          scale<1,1,1.5>*2.5
          translate<1.0,0,-1>
          }
        finish {ambient 1 diffuse 0}
        }
        scale 1000
     }

//para difuminar entre lo real y lo computacionalmente en un plano tridimensional de forma inversosimil resumido en la literatura
fog { fog_type   2
      distance   200
      color      White
      fog_offset 0.1
      fog_alt    1.5
      turbulence 1.8
    }
