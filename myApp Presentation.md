My Shiny App Presentation 
========================================================
author: meherd
date: April 27, 2017
autosize: true

Overview:
========================================================

- The Joyner–Boore Attenuation Data: 
This data gives peak accelerations measured at various observation stations for 23 earthquakes in California. The data have been used by various workers to estimate the attenuating affect of distance on ground acceleration.
- A data frame with 182 observations on these 5 variables.

1.	event (Event Number)
2.	mag	(Moment Magnitude)
3.  station	(Station Number)
4.	dist (Station-hypocenter distance (km))
5.  accel (Peak acceleration (g))

Source

Joyner, W.B., D.M. Boore and R.D. Porcella (1981). Peak horizontal acceleration and velocity from strong-motion records including records from the 1979 Imperial Valley, California earthquake. USGS Open File report 81-365. Menlo Park, Ca.
Summary 
========================================================


```
     event            mag           station         dist       
 Min.   : 1.00   Min.   :5.000   117    :  5   Min.   :  0.50  
 1st Qu.: 9.00   1st Qu.:5.300   1028   :  4   1st Qu.: 11.32  
 Median :18.00   Median :6.100   113    :  4   Median : 23.40  
 Mean   :14.74   Mean   :6.084   112    :  3   Mean   : 45.60  
 3rd Qu.:20.00   3rd Qu.:6.600   135    :  3   3rd Qu.: 47.55  
 Max.   :23.00   Max.   :7.700   (Other):147   Max.   :370.00  
                                 NA's   : 16                   
     accel        
 Min.   :0.00300  
 1st Qu.:0.04425  
 Median :0.11300  
 Mean   :0.15422  
 3rd Qu.:0.21925  
 Max.   :0.81000  
                  
```

```
  event mag station dist accel
1     1 7.0     117   12 0.359
2     2 7.4    1083  148 0.014
3     2 7.4    1095   42 0.196
4     2 7.4     283   85 0.135
5     2 7.4     135  107 0.062
6     2 7.4     475  109 0.054
```

Model 
========================================================


```

Call:
lm(formula = mag ~ accel, data = attenu)

Coefficients:
(Intercept)        accel  
     6.0593       0.1604  
```

![plot of chunk unnamed-chunk-2](myApp Presentation-figure/unnamed-chunk-2-1.png)
Source
==========================================================
Joyner, W.B., D.M. Boore and R.D. Porcella (1981). Peak horizontal acceleration and velocity from strong-motion records including records from the 1979 Imperial Valley, California earthquake. USGS Open File report 81-365. Menlo Park, Ca.
Summary of attenu data
