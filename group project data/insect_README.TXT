This Readme_Uhler_RelationshipOfInsectBiomassAndRichness-2021-NatCommun.txt file was generated on 2021-09-09 by Johannes Uhler
This dataset contains all the data required to replicate the analyses performed for the paper titled "Relationship of insect biomass and richness with land use along a climate gradient" by Uhler et al.
For easy access to all analyses and script outputs, see the attached html file.

GENERAL INFORMATION

1. Title of Dataset: Relationship of insect biomass and richness with land use along a climate gradient.

2. Author Information:
	A. Principal Investigator Contact Information
		Name: Johannes Uhler
		Institution: Field Station Fabrikschleichach, Department of Animal Ecology and Tropical Biology, Julius-Maximilians-University Würzburg, Würzburg, Germany. 
		Address: Glashüttenstraße 5
			 96181 Rauhenebrach
			 Germany
		Email: johannes.uhler@uni-wuerzburg.de

	B. Alternate Contact Information
		Name: Jörg Müller
		Institution: Field Station Fabrikschleichach, Department of Animal Ecology and Tropical Biology, Julius-Maximilians-University Würzburg, Würzburg, Germany.
		Address: Glashüttenstraße 5
			 96181 Rauhenebrach
			 Germany
		Institution: Bavarian Forest National Park, Grafenau, Germany.
		Address: Freyunger Str. 2
			 94481 Grafenau
			 Germany
		Email: joerg.mueller@npv-bw.bayern.de

3. Date of data collection: from 2019-04-01 to 2019-08-31

4. Geographic location of data collection: Federal state of Bavaria, Germany

5. Information about funding sources that supported the collection of the data: The LandKlif project was funded by the Bavarian Ministry of Science and the Arts


SHARING/ACCESS INFORMATION

1. Licenses/restrictions placed on the data: -

2. Links to publications that cite or use the data: -

3. Links to other publicly accessible locations of the data: -

4. Links/relationships to ancillary data sets: -

5. Was data derived from another source? yes/no
	A. If yes, list source(s): Data from Hallmann et al. 2017 was used to compare results, see file "Hallmann.csv" and figure "hallmann.jpeg".

6. Recommended citation for this dataset: 


DATA & FILE OVERVIEW

1. File List: 
	A. "data" - folder: Contains all the files (both data files and jpeg files) required to run the analyses with the attached R-script and recreate all the graphs embedded in the associated manuscript. 
		a) "Data_Uhler_2021_main.csv" - Main data file used for the majority of analyses
		b) "combination.csv" - Data file required for figure 3.
		c) "Data_correlation_plot.csv" - Supplementary figure 4.
		d) "Data_figure_4.csv" - Data file required for figure 4.
		e) "habitat.csv" - Data file required for figure 3.
		f) "Hallmann.csv" - Data file required for Supplementary figure 3.
		g) "landscape.csv" - Data file required for figure 3.
		h) "coeloptera.jpeg" - jpeg used in figure 4.
		i) "diptera.jpeg" - jpeg used in figure 4.
		j) "hemiptera.jpeg" - jpeg used in figure 4.
		k) "hymenoptera.jpeg" - jpeg used in figure 4.
		l) "lepidoptera.jpeg" - jpeg used in figure 4.
		m) "malaise.jpeg" - jpeg used in figure 2.
		n) "orthoptera.jpeg" - jpeg used in figure 4.

	B. "figures" - folder: Contains all the figures embedded in the associated manuscript.
		a) "barplot.jpeg" 
		b) "Bin correlation with toal biomass.jpeg" 
		c) "Correlation_plot.jpeg"
		d) "hallmann.jpeg"
		e) "season.jpeg"
		f) "seasonality.jpeg"

	C. "Uhler_2021.R": R file containing the script used for all data analyses performed for the associated manuscript. 
	
	D. "Uhler_2021.html". Html file created with the R packaged "knitr" for easy access to all outputs of the performed analyses.
	
	E. "spin.R": R file used to create "Uhler_2021.html". Added for the sake of completeness.
	

2. Relationship between files, if important: 
With the exception of the file "Hallmann.csv", all data files were calculated with the data from "Data_Uhler 2021_main.csv".
3. Additional related data collected that was not included in the current data package: 
-
4. Are there multiple versions of the dataset? yes/no
no
	A. If yes, name of file(s) that was updated: 
		i. Why was the file updated? 
		ii. When was the file updated? 


METHODOLOGICAL INFORMATION

1. Description of methods used for collection/generation of data: 
For study design, see Redlich, S. et al. Disentangling effects of climate and land use on biodiversity and ecosystem services – a multi-scale experimental design (2021), https://doi.org/10.1101/2021.03.05.434036.
For further information see the methods section of the associated manuscript.

2. Methods for processing the data: 
Insect biomass was measured directly from the insect samples. Number of species (BINs) were compiled from OTU/BIN-tables provided by AIM - Advanced identification methods.

3. Instrument- or software-specific information needed to interpret the data: 
The attached html file can be viewed with a standard webbrowser and contains all analyses conducted with outputs.

4. Standards and calibration information, if appropriate: 

5. Environmental/experimental conditions: 

6. Describe any quality-assurance procedures performed on the data: 

7. People involved with sample collection, processing, analysis and/or submission: 


DATA-SPECIFIC INFORMATION FOR: [FILENAME]
[data] - folder: 

	a) [Data_Uhler_2021_main.csv] - Main data file used for the majority of analyses
		1. Number of variables: 33

		2. Number of cases/rows: 1433

		3. Variable List: 
		
		- PLOTID: Identifier for each study site. Includes quadrant ID (e.g. 5636_4) and habitat type (e.g. a,f,g,n,u; also see "Plot_type").
		- QuadrantID: Identifier for quadrant. Up to three experimental sites can be located within the same quadrant.
		- Landscape_type: Landscape category of the Quadrant. Can be agricultural, semi-natural or urban).
		- Landscape_type_2: Same as "Landscape_type". Landscape types are represented by letters (a,b or c).
		- Plot_type: Habitat category of experimental plot. Includes arable field, forest, meadow, natural and settlement.
		- Plot_type_2: Same as "Plot_type". Habitat types are represented by letters (a,b,c or d).
		- Landscape_Plot: Combination of landscape category ("Landscape_type_2") and habitat category (Plot_type_2).
		- BIN_Richness: Number of unique BINs (Barcode index number) per plot and time frame. Only available for campaigns ("Visit") 5,7 and 9.
		- RL_Richness: Number of species listed on the red-lists for Bavaria or Germany, per plot and time frame. See methods section for further information.
		- BIN_Coleoptera: Number of BINs assigned to the group of Coleoptera per plot and time frame.
		- BIN_Diptera: Number of BINs assigned to the group of Diptera per plot and time frame.
		- BIN_Hemiptera: Number of BINs assigned to the group of Hemiptera per plot and time frame.
		- BIN_Hymenoptera: Number of BINs assigned to the group of Hymenoptera per plot and time frame.
		- BIN_Lepidoptera: Number of BINs assigned to the group of Lepidoptera per plot and time frame.
		- BIN_Orthoptera: Number of BINs assigned to the group of Orthtopera per plot and time frame.
		- BIN_Rest: Number of BINs assigned to none of the taxonomic groups mentioned above per plot and time frame. 
		- Visit: Number of the campaign the sample was taken in (1-10). 
		- Date start: Starting date of the time frame during which the sample was taken.
		- Date end: Ending date of the the time frame during which the sample was taken.
		- Day start: Same as "Date start", instead of DD-MM-YYYY in continuous number as day of the year.
		- Day end: Same as "Date end", instead of DD-MM-YYYY in continuous number as day of the year.
		- Day mean: Midpoint between "Day start" and "Day end".
		- Duration: Number of sampling days for each time frame.
		- Biomass: Insect biomass in g.
		- Biomass_per_day: Insect biomass in g per day.
		- Excluded: 1 if sample was removed from analysis. For further information see methods section and Supplementary Table 3.
		- Average_temperature: Average temperature for the time frame in °C measured by dataloggers on site. For further information see methods section of the associated manuscript.
		- Average_humidity: Average humidity for the time frame in °C measured by dataloggers on site. For further information see methods section of the associated manuscript.
		- Long-Term Mean Annual Precipitation: Annual mean precipitation calculated for each study site. See methods section for detailed information.
		- Long-Term Mean Annual Average Near Surface Temperature: Annual mean surface temperature calculated for each study site. See methods section for detailed information.
		- point_x: Longitude of the study plot, coordinate system as "ETRS89 / UTM zone 32N".
		- point_y: Latitude of the study plot,  coordinate system as "ETRS89 / UTM zone 32N".
		- Elevation: Elevation of the study plot in m.a.s.l..

		4. Missing data codes: 
		NA= data entry not available

		5. Specialized formats or other abbreviations used: -

	b) [combination.csv] - Data file required for figure 3.
		1. Number of variables: 5

		2. Number of cases/rows: 12

		3. Variable List: 

		- Habitat-Landscape: Combination of local habitat category and landscape category.
		- mas: Difference in biomass derived from the partial effect coefficients. 
		- bin: Difference in total species richness based on the partial effect coefficients.
		- rl: Difference in red-listed species based on the partial effect coefficients.
		- sig: Results from multiple post-hoc comparisons. Letters indicate significant differences. 

		4. Missing data codes: 
		-

		5. Specialized formats or other abbreviations used:

	c) [Data_correlation_plot.csv] - Supplementary figure 4.
		1. Number of variables: 17

		2. Number of cases/rows: 179

		3. Variable List: 
-		 PLOTID: Identifier for each study site. Includes quadrant ID (e.g. 5636_4) and habitat type (e.g. a,f,g,n,u; also see "Plot_type").
		- QuadrantID: Identifier for quadrant. Up to three experimental sites can be located within the same quadrant.
		- Landscape_type: Landscape category of the Quadrant. Can be agricultural, semi-natural or urban).
		- Landscape_type_2: Same as "Landscape_type". Landscape types are represented by letters (a,b or c).
		- Plot_type: Habitat category of experimental plot. Includes arable field, forest, meadow, natural and settlement.
		- Plot_type_2: Same as "Plot_type". Habitat types are represented by letters (a,b,c or d).
		- Landscape_Plot: Combination of landscape category ("Landscape_type_2") and habitat category (Plot_type_2).
		- BIN_Richness: Total number of unique BINs (Barcode index number) per plot. 
		- Long-Term Mean Annual Precipitation: Annual mean precipitation calculated for each study site. See methods section for detailed information.
		- Long-Term Mean Annual Average Near Surface Temperature: Annual mean surface temperature calculated for each study site. See methods section for detailed information.
		- point_x: Longitude of the study plot, coordinate system as "ETRS89 / UTM zone 32N".
		- point_y: Latitude of the study plot,  coordinate system as "ETRS89 / UTM zone 32N".
		- Elevation: Elevation of the study plot in m.a.s.l..
		- Climate_category: Climate category for the study site. For further information see methods section of the associated manuscript.
		- Excluded: 1 if sample was removed from analysis. For further information see methods section and Supplementary Table 3.

		4. Missing data codes: 
		NA= data entry not available

		5. Specialized formats or other abbreviations used: 

	d) [Data_figure_4.csv] - Data file required for figure 4.
		1. Number of variables: 6

		2. Number of cases/rows: 7

		3. Variable List: 
		- Taxon: Six taxonomic groups and "rest".
		- Forest: Standardized estimates of BIN richness to explain total biomass for forest plots.	
		- Meadow: Standardized estimates of BIN richness to explain total biomass for meadow plots.	
		- Arable field: Standardized estimates of BIN richness to explain total biomass for arable field plots.
		- Settlement: Standardized estimates of BIN richness to explain total biomass for settlement plots.
		- BIN Richness: Total BIN richness of major taxonomic groups.

		4. Missing data codes: 
		-

		5. Specialized formats or other abbreviations used: 

	e) [habitat.csv] - Data file required for figure 3.
		1. Number of variables: 5

		2. Number of cases/rows: 4

		3. Variable List: 
		- Plot Habitat: Local habitat category.
		- mas: Difference in biomass derived from the partial effect coefficients. 
		- bin: Difference in total species richness based on the partial effect coefficients.
		- rl: Difference in red-listed species based on the partial effect coefficients.
		- sig: Results from multiple post-hoc comparisons. Letters indicate significant differences. 
		
		4. Missing data codes: 
		-

		5. Specialized formats or other abbreviations used: 

	f) [Hallmann.csv] - Data by Hallmann et al., file required for Supplementary figure 3.
		1. Number of variables: 15

		2. Number of cases/rows: 1512

		3. Variable List: 
		- untitled: -
		- plot: Study site identifier.
		- forest: Is study site located inside/near a forest; n=no; x=yes.
		- year: Year of sample collection
	   	- Period: Time period when the samples was taken: A: 1989-1995; B: 1997-2011; c:2012-2016.
		- from: Starting date of the time frame during which the sample was taken.
		- to: Ending date of the time frame during which the sample was taken.	
		- from.daynr: Same as "from", , instead of DD-MM-YYYY in continuous number as day of the year.
		- to.daynr: Same as "to", instead of DD-MM-YYYY in continuous number as day of the year.	
		- biomass: Measured weight of insect biomass in g.	
		- potID: Secondary plot identifier.
		- E: Longitude.
		- N: Latitude.
		- location.type: Local habitat type.
		- mean.daynr: Midpoint between "from.daynr" and "to.daynr".

		4. Missing data codes: 
		NA= data entry not available

		5. Specialized formats or other abbreviations used: -

	g) [landscape.csv] - Data file required for figure 3.
		1. Number of variables: 5

		2. Number of cases/rows: 3

		3. Variable List: 
		- Landscape Type: Landscape category.
		- mas: Difference in biomass derived from the partial effect coefficients. 
		- bin: Difference in total species richness based on the partial effect coefficients.
		- rl: Difference in red-listed species based on the partial effect coefficients.
		- sig: Results from multiple post-hoc comparisons. Letters indicate significant differences. 

		4. Missing data codes: 
		-
		5. Specialized formats or other abbreviations used: -
