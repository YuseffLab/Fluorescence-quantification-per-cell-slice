# Z stack multimeasure

This repository contains the necesary .ijm macros and R scripts to analyze distinct measurements for each slice of Z-stack images.

Contributors for the code are Dr. Felipe Del Valle, Martina Alamo and Dr. Jonathan Lagos.

## Z-stack multimeasure macros
You can find this macros under the name of multimeasure_zstackrois.ijm and run it in ImageJ / Fiji 

## R script to select and organize Z-stack measurements
You can find this script under the name of script_filter_Zstackmeasurements.R and run it in R

## Step by step

On Fiji:

Before you start de macros on ImageJ/Fiji, set the software measurements to the ones of your interests. In the available R script we use the "RawIntDen" from "Integrated Density". For the R script to work, "Display label" and "Stack position" must be selected.
Save all your images on the same folder and create a separate folder for "Results"
The macros will ask for each of these folder and then repeat the following steps for each image:
1. Select you slices of interest: Write down the first and last slice of your image. TIP: You can cut all your singular cells beforehand so that all the slices are useful, then you can skip this step.
2. Draw your cell: With your tool of preference, draw the border of the cell and save it to ROIs. This area will apply to all slices, forming a "cilinder", you cannot draw an area for each one. In case your image have more than one cell, add all of them to ROIs before pressing "OK".

On R:

3. Open the script and download the required library (tidyverse).
4. Change your working directory to your "Results" folder
5. On line 3, change the PATH to the one of your "Results" folder.
6. On line 8, your can change "RawIntDen1" to the measurements you wil use, for example "Mean".
7. Now, you should be good to run the whole script with no problem.
8. The script will generate a .csv document for each adquisition channel and a general one. From line 11 and so on, you can choose which lines to run depending on the channels your images have.

The csv. documents show on the first column the image Label, then, to the right, each column represents a ROI from that image. For example, if you cut 7 cells from "Image 1", there will be 7 "RawIntDen" columns to the right of the "Image 1" label.

## Contact
If you have any questions please email them to: iriobo@uc.cl (Isidora Riobó, Lab Yuseff)

