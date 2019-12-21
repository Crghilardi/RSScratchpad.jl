#Normalized Difference Vegetation Index
function NDVI(img::Landsat7ETMImage)
    (img.b4 - img.b3) / (img.b4 + img.b3)
end

function NDVI(img::Landsat8OLIImage)
    (img.b5 - img.b4) / (img.b5 + img.b4)
end

function NDVI(img::AbstractSentinelImage)
    (img.b8 - img.b4) / (img.b8 + img.b4);
end

function TassledCap(img::Landsat8OLIImage)
    brightness = img.b1 * 0.3029 + img.b2 * 0.2786 + img.b3 * 0.4733 + img.b4 * 0.5599 + img.b5 * 0.508 + img.b6 * 0.1872
    greenness =  img.b1 * (-0.2941) + img.b2 * (-0.243) + img.b3 * (-0.5424) + img.b4 * 0.7276 + img.b5 * 0.0713 + img.b6 * (-0.1608)
    wetness = img.b1 * 0.1511 + img.b2 * 0.1973 + img.b3 * 0.3283 + img.b4 * 0.3407 + img.b5 * (-0.7117) + img.b6 * (-0.4559)
end

function TassledCap(img::Landsat7ETMImage)
   brightness =  img.b1 * 0.3561 + img.b2*  0.3972 + img.b3 * 0.3904 + img.b4 * 0.6966 + img.b5 * 0.2286 + img.b7 0.1596 
   greenness=  img.b1 * -0.3344 + img.b2 * -0.3544 + img.b3 * -0.4556 + img.b4 *  0.6966+-0.0242+-0.2630
   wetness =  img.b1 * 0.2626 + img.b2 * 0.2141 + img.b3 * 0.0926 + img.b4 * 0.0656 + img.b5 * -0.7629 + img.b7 * -0.5388
end

#---TO DO ---
#Enhanced Vegetation Index 
#function EVI end

#Modified Soil Adjusted Vegetation Index
#function MSAVI end 

#Normalized Burn Ratio Index
#function NBRI end

#Normalized Difference Water Index
#function NDWI end
