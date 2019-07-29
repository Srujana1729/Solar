# Core concept 
In this project, I am developing a tool that enables users to find out if it is useful to install solar panels at a specific location. From a business user perspective, this tool can help companies identify which areas to focus their marketing efforts on, and at what times of the year. From a customer perspective, this tool can help a prospective customer in figuring out if it is worth investing their time and effort in setting up their own solar panels.

# Motivation
In the last decade, solar has experienced an average annual growth rate of 50% (1). This was led by falling prices of solar panels,  coupled with a tax incentive. While price of the hardware itself is falling, soft costs like customer acquisition are still very high, preventing companies from expanding rapidly. Location based profiling of customers can help speed up this process. Time is of essence now, since the tax incentive for customers, called the Solar Investment Tax Credit (ITC), is in place only through 2021.

# Data sources 
The success of any solar energy installation depends largely on the availability of solar radiation at that location. For the proposal, I have used the "National Solar Radiation Database (NSRD) -- Sunlight Data" - two decades (1991-2010) of solar radiation data provided by NOAA (2). This database contains monthly radiation and meteorological data for over 1,500 stations across the United States.

# Exploratory findings
The first plot is aimed at narrowing the location best suited for solar to the state level (See plot 1 - Identifying states). We see that the Southwestern states, especially Arizona and New Mexico seem the most attractive in terms of solar radiation.
The second plot delves deeper into the state (I've used Arizona as an example) to identify which times of the year are best for solar, so that companies can tailor their marketing efforts to maximize returns. We see that solar radiation is maximum in June, tapering off rapidly towards the end of the year.

# References:
(1) https://www.seia.org/solar-industry-research-data
(2) https://www.nber.org/data/noaa-national-solar-radiation-nsrd-sunlight-data.html
