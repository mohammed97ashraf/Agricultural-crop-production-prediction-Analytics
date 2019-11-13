# Agricultural-crop-production-prediction-Analytics
Use of Data mining techniques to Predict the crop production.




<h3>ENVIRONMENTAL SETUP:</h3>


  1.Python 3.5-
       Pandas,
       NumPy,
       Scikit-learn, 
       Plotly.     
  2.R -
       Cluster,
       Factoextra,
       ggplot2.
       
<h3>PROBLEM STATEMENT:</h3>
There is no proper system exist that can help farmer in taking right decision i.e. which 
crop they have to plant in which situation. So our main aim is to build such a model that can help 
farmer to take right decision in right time.
<h3>EXISTING SYSTEM:</h3>
  Indian is an agriculture based country,.As we know that agriculture in India is a backbone 
for Indian Economy. It also consider as a "way of life" among Indian masses because more than 
50% of the Indian People's livelihood directly depend on it. However, From last few years, It is 
on verge of declining in its growth and even showed negative growth rate in some years because 
of following challenges:
1)They are over dependent on the traditional crops like wheat and rice, they don‘t see and follow 
which crop is best for which seasons.
2)In many part of india,farmers are largly depended on timley rainfall for harvest and subsequent 
profit.Sometimes they don‘t even get the good amount of rainfall to produce their crop in large 
amount so it is a big problem for farmers after their hard work.
3) Farmers are faced with new challenges and opportunities, they have to make n number of 
decision everyday to get their best result. Farmers are calculating how much of what crops to 
grow where and when.The losses in the crop production can be reduced by adopting proper crop 
management practices with the help of timely and accurate forcasting like temperature, 
humidity,soil,rainfall etc. it can help farmers to take a right decision in a right time.

<h3>Proposed Methodology:</h3>
 dataset consist of 14 year of datasets with parameters such as: Year, State-Odisha 
,District Wise, crop like (Rice,Wheat,groundnut,Ragi,Urad,Sugarcane), season (kharif, rabi, 
summer,autumn,whole year), (area in hectares), (production in tones), average temperature 
in(°C), average rainfall in(mm), soil, soil type, minimum rainfall required, minimum temperature 
required. In proposed work, modified approach of K-means method is used to cluster the data 
based on districts which are having similar temperature, rainfall and humidity. PAM and 
CLARA are used to cluster the data according to districts which are producing maximum crop 
production . Based on these analyses we are obtaining the optimal parameters to produce the maximum crop production. Multiple linear regression method is used to Predict the year wise 
crop yield. And we are also going to use some machine learning Algorithms for Clustering like 
K-Mean.



<h4>for result and analytical model output please chack result.pdf file</h4>
