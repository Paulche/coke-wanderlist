## Tour layout
  * First version of layout

    * tour-root: %{sandbox}/Resources/%{tour-uuid} - Root for tour

    * %{tour-root}/Info.plist - Main manifest for tour 
      It comprises array of Place of Interest(POI) which comprises following things:
        
        * Coordinate of POI
        * Number in list of poi
        * Array of path to images
        * Array of path to audios

    * %{tour-root}/Images - Image folder

    * %{tour-root}/Audios - Audio folder
     
    * %{tour-root}/Text.plist - Text plist file
     
