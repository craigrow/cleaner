Samsung Data
============

The data produced by run_analysis.R is as follows. Each row is a single subject 
performing a single activity. Each of the columns is the mean of the
measurements taken from the device for that subject and activity. The
columns are as follows.


Subject
-------

An numeric ID for each subject. Names were unknown. 30 subject numbered
1 through 30.


Activity
--------

The name of the activity being performed. Activities are self-describing
and are as follows.

* Walking
* Walking up stairs
* Walking down stairs
* Sitting
* Standing
* Laying


Means of the Measurements
-------------------------

The remaining columns are the means of the measurements for each measurement for the 
subject and activity. The interpretation of the measurements is open to judgement.
The names have been "cleaned" to make for easier processing but have otherwise
not been changed. If the meaning is not clear, the original data source should 
be consulted for further clarification.

The means of the measurements have the following characteristics. 

MEASUREMENT NAME					MINIMUM VALUE	MAXIMUM VALUE
tbodyaccmeanx						0.2215982		0.301461
tbodyaccmeany						-0.001308288	-0.040513953
tbodyaccmeanz						-0.07537847		-0.1525139
tbodyaccstdx						-0.008659219	0.626917071
tbodyaccstdy						-0.002320265	0.616937015
tbodyaccstdz						-0.0077153		0.60901788
tgravityaccmeanx					-0.134832		0.9745087
tgravityaccmeany					-0.002814673	0.956593814
tgravityaccmeanz					-0.001993106	0.957873042
tgravityaccstdx						-0.8295549		-0.9967642
tgravityaccstdy						-0.6435784		-0.9942476
tgravityaccstdz						-0.6101612		-0.9909572
tbodyaccjerkmeanx					0.0426881		0.13019304
tbodyaccjerkmeany					-1.09E-02		9.91E-03
tbodyaccjerkmeanz					-1.00E-02		9.42E-03
tbodyaccjerkstdx					-0.003583389	0.544273037
tbodyaccjerkstdy					-0.01235011		0.355306717
tbodyaccjerkstdz					-0.01351363		0.03101571
tbodygyromeanx						-0.002826419	0.192704476
tbodygyromeany						-0.00247162		0.027470756
tbodygyromeanz						-0.000233248	0.179102058
tbodygyrostdx						-0.0264358		0.2676572
tbodygyrostdy						-0.01483926		0.476518714
tbodygyrostdz						-0.03140835		0.56487582
tbodygyrojerkmeanx					-0.02209163		-0.15721254
tbodygyrojerkmeany					-0.01320228		-0.07680899
tbodygyrojerkmeanz					-0.006940664	-0.092499853
tbodygyrojerkstdx					-0.1639449		0.17914865
tbodygyrojerkstdy					-0.01462992		0.29594593
tbodygyrojerkstdz					-0.034421747	0.193206499
tbodyaccmagmean						-0.000971395	0.644604325
tbodyaccmagstd						-0.01357712		0.42840592
tgravityaccmagmean					-0.000971395	0.644604325
tgravityaccmagstd					-0.01357712		0.42840592
tbodyaccjerkmagmean					-0.017978463	0.434490401
tbodyaccjerkmagstd					-0.02028505		0.45061207
tbodygyromagmean					-0.003102438	0.418004609
tbodygyromagstd						-0.02184632		0.29997598
tbodygyrojerkmagmean				-0.04631178		0.08758166
tbodygyrojerkmagstd					-0.0438985		0.2501732
fbodyaccmeanx						-0.02262392		0.53701202
fbodyaccmeany						-0.006237		0.524187687
fbodyaccmeanz						-0.04769426		0.28073595
fbodyaccstdx						-0.004738197	0.658506543
fbodyaccstdy						-0.002562942	0.560191344
fbodyaccstdz						-0.03379653		0.68712416
fbodyaccmeanfreqx					-1.06E-01		9.10E-02
fbodyaccmeanfreqy					-0.002040511	0.466528232
fbodyaccmeanfreqz					-0.002251953	0.402532553
fbodyaccjerkmeanx					-0.007014723	0.474317256
fbodyaccjerkmeany					-0.003091553	0.276716853
fbodyaccjerkmeanz					-0.02487898		0.15777569
fbodyaccjerkstdx					-0.004262891	0.476803887
fbodyaccjerkstdy					-0.00175392		0.349771285
fbodyaccjerkstdz					-0.006236475	-0.99310776
fbodyaccjerkmeanfreqx				-0.02350415		0.33144928
fbodyaccjerkmeanfreqy				-1.06E-02		9.87E-02
fbodyaccjerkmeanfreqz				-0.003916088	0.230107946
fbodygyromeanx						-0.029997		0.47496245
fbodygyromeany						-0.05570225		0.32881701
fbodygyromeanz						-0.01050471		0.49241438
fbodygyrostdx						-0.1083888		0.1966133
fbodygyrostdy						-0.02848957		0.64623364
fbodygyrostdz						-0.08225211		0.52245422
fbodygyromeanfreqx					-0.003546796	0.249209412
fbodygyromeanfreqy					-0.003516971	0.273141323
fbodygyromeanfreqz					-0.005130402	0.377074097
fbodyaccmagmean						-0.003533418	0.586637551
fbodyaccmagstd						-0.021478788	0.178684581
fbodyaccmagmeanfreq					-0.000332754	0.435846932
fbodybodyaccjerkmagmean				-0.012882383	0.538404846
fbodybodyaccjerkmagstd				-0.01395391		0.31634642
fbodybodyaccjerkmagmeanfreq			-0.000259638	0.4880885
fbodybodygyromagmean				-0.00036273		0.203979765
fbodybodygyromagstd					-0.06147658		0.23665966
fbodybodygyromagmeanfreq			-0.000262187	0.409521612
fbodybodygyrojerkmagmean			-0.02290453		0.14661857
fbodybodygyrojerkmagstd				-0.03985738		0.28783462
fbodybodygyrojerkmagmeanfreq		-0.000234019	0.42630168
angletbodyaccmeangravity			-1.06E-02		9.92E-03
angletbodyaccjerkmeangravitymean	-0.00016016		0.203259966
angletbodygyromeangravitymean		-0.00086743		0.444101172
angletbodygyrojerkmeangravitymean	-1.00E-01		9.91E-02
anglexgravitymean					-0.3045485		0.7377844
angleygravitymean					-1.76E-01		9.82E-02
anglezgravitymean					-0.000327699	0.390444369