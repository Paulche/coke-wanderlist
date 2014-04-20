## Tour layout
  * First version of layout

    * tour-root: %{sandbox}/Resources/%{tour-uuid} - Root for tour

    * %{tour-root}/Info.plist - Main manifest for tour 
      It comprises array of Place of Interest(POI) which comprises following things:
       
        * Offset of POI in list (starting from 1)
        * Title
        * Coordinate of POI
        * Array of images (optional)
        * Audio 
        
        Audio comprises:
          * path to audio data, relative to Audios folder 
          * title of audio

        Image comprises:
          * path to image data, relative to Image folder
          * title of audio

    * %{tour-root}/Images - Image folder

    * %{tour-root}/Audios - Audio folder
     
    * %{tour-root}/Text.plist - Text plist file
    
      Each item in Text plist is consists of: 
        * Text, description of POI
