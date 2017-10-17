drop table ontime;

create table ontime
(
   Year                int,
   Month               int,
   DayofMonth          int,
   DayOfWeek           int,
   DepTime             int,
   CRSDepTime          int,
   ArrTime             int,
   CRSArrTime          int,
   UniqueCarrier       string,
   FlightNum           int,
   TailNum             string,
   ActualElapsedTime   int,
   CRSElapsedTime      int,
   AirTime             int,
   ArrDelay            int,
   DepDelay            int,
   Origin              string,
   Dest                string,
   Distance            int,
   TaxiIn              int,
   TaxiOut             int,
   Cancelled           int,
   CancellationCode    string comment 'A=carrier, B=weather, C=NAS, D=security',
   Diverted            string comment '1=yes, 0=no',
   CarrierDelay        int,
   WeatherDelay        int,
   NASDelay            int,
   SecurityDelay       int,
   LateAircraftDelay   int
) comment 'The data consists of flight arrival and departure details for all commercial flights within the USA, from October 1987 to April 2008'
partitioned by (delayYear int)
row format delimited
	fields terminated by ','
	lines terminated by '\n'
	stored as textfile;
	

load data local inpath '/project/02_Software/dataexpo/1987_nohead.csv'
overwrite into table ontime
partition (delayYear='1987');

load data local inpath '/project/02_Software/dataexpo/1988_nohead.csv'
overwrite into table ontime
partition (delayYear='1988');

load data local inpath '/project/02_Software/dataexpo/1989_nohead.csv'
overwrite into table ontime
partition (delayYear='1989');

load data local inpath '/project/02_Software/dataexpo/1990_nohead.csv'
overwrite into table ontime
partition (delayYear='1990');

load data local inpath '/project/02_Software/dataexpo/1991_nohead.csv'
overwrite into table ontime
partition (delayYear='1991');

load data local inpath '/project/02_Software/dataexpo/1992_nohead.csv'
overwrite into table ontime
partition (delayYear='1992');

load data local inpath '/project/02_Software/dataexpo/1993_nohead.csv'
overwrite into table ontime
partition (delayYear='1993');

load data local inpath '/project/02_Software/dataexpo/1994_nohead.csv'
overwrite into table ontime
partition (delayYear='1994');

load data local inpath '/project/02_Software/dataexpo/1995_nohead.csv'
overwrite into table ontime
partition (delayYear='1995');

load data local inpath '/project/02_Software/dataexpo/1996_nohead.csv'
overwrite into table ontime
partition (delayYear='1996');

load data local inpath '/project/02_Software/dataexpo/1997_nohead.csv'
overwrite into table ontime
partition (delayYear='1997');

load data local inpath '/project/02_Software/dataexpo/1998_nohead.csv'
overwrite into table ontime
partition (delayYear='1998');

load data local inpath '/project/02_Software/dataexpo/1999_nohead.csv'
overwrite into table ontime
partition (delayYear='1999');

load data local inpath '/project/02_Software/dataexpo/2000_nohead.csv'
overwrite into table ontime
partition (delayYear='2000');

load data local inpath '/project/02_Software/dataexpo/2001_nohead.csv'
overwrite into table ontime
partition (delayYear='2001');

load data local inpath '/project/02_Software/dataexpo/2002_nohead.csv'
overwrite into table ontime
partition (delayYear='2002');

load data local inpath '/project/02_Software/dataexpo/2003_nohead.csv'
overwrite into table ontime
partition (delayYear='2003');

load data local inpath '/project/02_Software/dataexpo/2004_nohead.csv'
overwrite into table ontime
partition (delayYear='2004');

load data local inpath '/project/02_Software/dataexpo/2005_nohead.csv'
overwrite into table ontime
partition (delayYear='2005');

load data local inpath '/project/02_Software/dataexpo/2006_nohead.csv'
overwrite into table ontime
partition (delayYear='2006');

load data local inpath '/project/02_Software/dataexpo/2007_nohead.csv'
overwrite into table ontime
partition (delayYear='2007');

load data local inpath '/project/02_Software/dataexpo/2008_nohead.csv'
overwrite into table ontime
partition (delayYear='2008');


select count(*) as totalcnt from ontime;


