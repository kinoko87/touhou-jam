particle_system = part_system_create_layer("Weather", 0);

#region Snow
// snow

particle_SnowSmall =  part_type_create(); 
part_type_sprite(particle_SnowSmall, spr_Particle_Snow_Small, 0, 0 , 1); 
part_type_size(particle_SnowSmall, 0.4,0.7, 0 , 0);

part_type_speed(particle_SnowSmall, 0.5,1.5, 0, 0  );	
part_type_direction(particle_SnowSmall, 270,270, 0, 5   );

part_type_life(particle_SnowSmall, 1200,1200);
part_type_alpha3(particle_SnowSmall, 0.8, 0.7, 0.1);

particle_SnowMedium =  part_type_create(); 
part_type_sprite(particle_SnowMedium, spr_Particle_Snow_Medium, 0, 0 , 1); 
part_type_size(particle_SnowMedium, 0.2,0.4, 0 , 0);

part_type_speed(particle_SnowMedium, 0.8,2, 0, 0  );	
part_type_direction(particle_SnowMedium, 270,270, 0, 5   );

part_type_life(particle_SnowMedium, 1200,1200);
part_type_alpha3(particle_SnowMedium, 0.8, 0.7, 0.1);

particle_SnowBig =  part_type_create(); 
part_type_sprite(particle_SnowBig, spr_Particle_Snow_Big, 0, 0 , 1); 
part_type_size(particle_SnowBig, 0.4,0.7, 0 , 0);

part_type_speed(particle_SnowBig, 0.8,2, 0, 0  );	
part_type_direction(particle_SnowBig, 270,270, 0, 5   );

part_type_life(particle_SnowBig, 1200,1200);
part_type_alpha3(particle_SnowBig, 0.8, 0.7, 0.1);

particle_SnowCloud = part_type_create(); 
part_type_shape(particle_SnowCloud, pt_shape_cloud );
part_type_size(particle_SnowCloud, 2,5, 0.01,  0) ;
part_type_orientation(particle_SnowCloud, 0,359 , 0, 2, 0);
part_type_life(particle_SnowCloud, 300,450);
part_type_blend(particle_SnowCloud, 1);
part_type_alpha3(particle_SnowCloud, 0.001, 0.05, 0.001   );



#endregion