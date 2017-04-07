"Disable the print key for Macvim

if has("gui_macvim") 
  macmenu &File.Print Key=<nop>
 endif  

 if has("macvim")
   macmenu &File.Print Key=<nop>
  endif  
