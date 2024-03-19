close("*");
setOption("JFileChooser", true);
dir= getDirectory("Select the folder of your images");
setOption("JFileChooser", false);

setOption("JFileChooser", true);
dir_results= getDirectory("The folder of the results");
setOption("JFileChooser", false);
//loop setup
imagenames=getFileList(dir); /// directory of cells
nbimages=lengthOf(imagenames); 
image_save=getFileList(dir);

for(image=0; image<nbimages; image++) { 
	name=imagenames[image];
	totnamelength=lengthOf(name); 
	namelength=totnamelength-4;
	name1=substring(name, 0, namelength);
	extension=substring(name, namelength, totnamelength);

		
		if(extension==".tif" || extension==".nd2" || extension==".czi" ) { 
		
					close("*");
					// apertura de archivos .tif
					roiManager("reset");
					open(dir+File.separator+name);
					Stack.setDisplayMode("composite");
					run("Brightness/Contrast...");
					run("Enhance Contrast", "saturated=0.35");
					lista = getList("image.titles");
					Array.print(lista);					
					getPixelSize (unit,pw,ph);
					waitForUser("selecciona los planos de interes");
					waitForUser("selecciona las celulas");
					roiManager("show all");
					roiManager("Show All with labels");
					roiManager("Select All");
					roiManager("multi measure");
					saveAs("Results", dir_results+"results_"+name+".csv");
					roiManager("Save", dir_results+"roi_manager_"+name+".zip");
					roiManager("reset");

		
}
}
