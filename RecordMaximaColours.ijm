// Record location and colour values of maxima to file
// (c) Dr Nick 2018

// First run "Find Maxima" with the output type as "List"
// Then run this macro


// Select/create a file to write the results to, e.g. results.csv
// If you use .csv then you will be able to open it in excel.
f = File.open("")
print(f,"Image, x, y, r, g, b\n");

img = getTitle();
// get coordinates from the results table

for (i=0; i < nResults; i++){// note rows labelled from 0 in results table
  x = getResult("X", i);
  y = getResult("Y", i); 

  rgb = getPixel(x,y);
  r = (rgb>>16)&0xff;  
  b = (rgb>>8)&0xff; 
  g = rgb&0xff;       

  print(img+", "+x+", "+y+",  "+r+", "+b+", "+g+"\n");
  print(f,img+", "+x+", "+y+",  "+r+", "+b+", "+g+"\n");

}