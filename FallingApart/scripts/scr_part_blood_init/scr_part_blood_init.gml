///initialize global blood
function scr_part_blood_init(){

global.pt_blood = part_type_create();
var pt = global.pt_blood;

//Adjustments BP
part_type_shape(pt,pt_shape_disk);
part_type_size(pt,0.1,0.2,0,0);
part_type_color2(pt,c_red,c_maroon);
part_type_speed(pt,2,5,-0.1,0);
part_type_direction(pt,0,360,0,0);
part_type_gravity(pt,0.2,270);
part_type_life(pt,25,50);

}