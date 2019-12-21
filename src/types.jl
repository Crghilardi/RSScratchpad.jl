#fill in structs when geoarray/geostats ecosystem stabilize?
struct AbstractLandsatImage end

#TODO: add older landsat types
#struct Landsat5Image <: AbstractLandsatImage end

struct Landsat7ETMImage <: AbstractLandsatImage
    b1
    b2
    b3
    b4
    b5
    b6
    b7
    b8
    row
    path
    date
end

struct Landsat8OLIImage <: AbstractLandsatImage
    b1
    b2
    b3
    b4
    b5
    b6
    b7
    b8
    b9
    b10
    b11
    row
    path
    date
end

struct AbstractSentinelImage end

#other metadata?
struct Sentinel2AImage <: AbstractSentinelImage
    b1
    b2
    b3
    b4
    b5
    b6
    b7
    b8
    b8a
    b9
    b10
    b11
    b12
end

struct Sentinel2BImage <: AbstractSentinelImage
    b1
    b2
    b3
    b4
    b5
    b6
    b7
    b8
    b8a
    b9
    b10
    b11
    b12
end
