cs2cs +proj=latlong +datum=NAD83 +to +proj=utm +zone=10 +datum=NAD27 -r <<EOF
45°15'33.1" 111.5W
45d15.551666667N -111d30
+45.25919444444 111d30'000w
EOF

cs2cs EPSG:25832 EPSG:31468 teil1.txt > teil1konv_cs2cs.txt

# ACHTUNG: nur mit symlink geht das!
cs2cs EPSG:25832 +to +proj=tmerc +lat_0=0 +lon_0=12 +k=1 +x_0=4500000 +y_0=0 +ellps=bessel +nadgrids="/Users/Valentin/.qgis3_ntv2_transformation_plugin/grids/BY_KANU.gsb" +units=m +no_defs teil1.txt
