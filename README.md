# RemoteSensing.jl

Scratchpad repo for multiple dispatch on satellite imagery in Julia

This repo is a collection of hypothesized types and algorithms for remote sensing in Julia.

## Types

The idea is to have an `AbstractProviderType` at the top level and then a unique type a level below that to dispatch on. For example in `types.jl` we define:

```Julia
Landsat7Image <: AbstractLandsatImage

Landsat8Image <: AbstractLandsatImage
```
and then in `spectral_indices.jl` we can write specific algorithms to account for slight changes in coefficients and/or band numbering.

```Julia
function NDVI(img::Landsat7Image)
    (img.b4 - img.b3) / (img.b4 + img.b3)
end

function NDVI(img::Landsat8Image)
    (img.b5 - img.b4) / (img.b5 + img.b4)
end

```

TO DO:

I don't know what image IO looks like currently, or what the future will look like as the other geo packages move along. 

I expect at the very least this can be used as a placeholder for various formulas until it is usurped by a better package.