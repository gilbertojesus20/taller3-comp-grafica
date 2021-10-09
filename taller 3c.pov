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

plane{
y,-1.5
    texture{
         pigment{
           square
            color rgb <0,0,1>
            color rgb <0,1,0>
            color rgb <1,0,1>
            color rgb <1,1,0>
             turbulence 2
             scale 5
             }
         } 
  
}

//para las nubes    
plane{<0,1,0>,1 hollow
       texture{
        pigment{ bozo turbulence 0.97
          color_map {
           [0.00 rgb <0.2, 0.3, 1>*0.5]
           [0.50 rgb <2, 0, 1>*0.8]
           [0.70 rgb <1,0,0>]
           
           }
          scale<1,1,1.5>*2.5
          translate<1.0,0,-1>
          }
        finish {ambient 1 diffuse 0}
        }
        scale 1000
     }
     
fog { fog_type   2
      distance   150
      color      White
      fog_offset 0.1
      fog_alt    1.5
      turbulence 1.8
    } 
    
//   
text{
   ttf "arial.ttf",
   "helado de uwu",1000, 0
   texture{
     pigment{color rgb<1,0.65,0.5>}
     finish{ambient 0.15
            diffuse 0.85}
          }
   translate<-3.5,6,-11> }
   
merge{

sphere{
<0,4,-10>,1.7
pigment{Red_Marble}
}
   
cone{<0,4,-10>,2.0,<0,0,-10>,0.0
      texture{
              pigment{color rgb <1,0.3,0>}
      normal { crackle 1.5
         scale 0.25}
              normal {bumps 0.5 scale 0.15}
              finish {phong 1}

}
             } 
             
             

}