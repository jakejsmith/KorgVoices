# Korg N1/N5 Voice Look-Up Tool
A simple app that lets users quickly look up where to find voices on the Korg N1 or N5.

# Description
Korg's model N1 and N5 synthesizers have more than 800 built-in voices and voice combinations that come preset. Unfortunately, those sounds are organized in a very haphazard fashion and dispersed across half a dozen arbitrarily organized "sound banks"; the only record of where to find each sound is the owner's manual (or an [archaic, poorly-scanned PDF](https://cdn.korg.com/us/support/download/files/12275352cbc6bbfa6abcea43b8a8191e.pdf?response-content-disposition=inline%3Bfilename%3DN1_N5_VoiceName.pdf&response-content-type=application%2Fpdf%3B) from the Korg website). This makes it very difficult to find the voice/combination/program that you want. 

This simple web app seeks to solve this problem by allowing users to search the full catalog of sound banks, and instantly returning the location (i.e., the sound bank and voice number) of each voice that contains the search term. 

# Getting Started
If you want to run or play with the code, you'll need R/R Studio with the following packages installed:
- tidyverse
- shiny
- shinytitle
- rsconnect

# Note on the CSV
I used Adobe Acrobat's built-in OCR tool with some (extensive) hand-cleaning to obtain the [.csv](/N1_N5_VoiceName.csv) that the app pulls from. (Note: This was first attempted using the tesseract package in R, but the results were quite poor, even after image processing and rescaling. That's likely because 1) the original PDF is fairly low-quality, 2) tesseract works best with full sentences rather than individual words, and 3) many of the Korg voices are not standard English words.)
