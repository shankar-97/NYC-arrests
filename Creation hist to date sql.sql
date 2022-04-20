/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      DATA MODEL
 *
 * Date Created : Tuesday, April 12, 2022 00:22:18
 * Target DBMS : Microsoft SQL Server 2019
 */

USE master
go
CREATE DATABASE HistableNYC
go
USE HistableNYC
go
/* 
 * TABLE: bdg_age 
 */

CREATE TABLE bdg_age(
    Age_SK        int            NOT NULL,
    Arrest_SK     int            NOT NULL,
    DI_JobID      varchar(10)    NULL,
    DI_JobDate    datetime       NULL,
    CONSTRAINT PK__bdg_age__DA20821AF8582C65 PRIMARY KEY CLUSTERED (Age_SK, Arrest_SK)
)

go


IF OBJECT_ID('bdg_age') IS NOT NULL
    PRINT '<<< CREATED TABLE bdg_age >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE bdg_age >>>'
go

/* 
 * TABLE: bdg_arrest_precinct 
 */

CREATE TABLE bdg_arrest_precinct(
    Arrest_Precint_SK    int            NOT NULL,
    Arrest_SK            int            NOT NULL,
    DI_JobID             varchar(10)    NULL,
    DI_JobDate           date           NULL,
    CONSTRAINT PK__bdg_arre__57BEB09EFA0E9A11 PRIMARY KEY CLUSTERED (Arrest_Precint_SK, Arrest_SK)
)

go


IF OBJECT_ID('bdg_arrest_precinct') IS NOT NULL
    PRINT '<<< CREATED TABLE bdg_arrest_precinct >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE bdg_arrest_precinct >>>'
go

/* 
 * TABLE: bdg_date 
 */

CREATE TABLE bdg_date(
    Date_SK       int            NOT NULL,
    Arrest_SK     int            NOT NULL,
    DI_JobID      varchar(10)    NULL,
    DI_JobDate    datetime       NULL,
    CONSTRAINT PK__bdg_date__D6222BB42959AEE9 PRIMARY KEY CLUSTERED (Date_SK, Arrest_SK)
)

go


IF OBJECT_ID('bdg_date') IS NOT NULL
    PRINT '<<< CREATED TABLE bdg_date >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE bdg_date >>>'
go

/* 
 * TABLE: bdg_jurisdiction 
 */

CREATE TABLE bdg_jurisdiction(
    Jurisdiction_SK    int            NOT NULL,
    Arrest_SK          int            NOT NULL,
    DI_JobID           varchar(10)    NULL,
    DI_JobDate         datetime       NULL,
    CONSTRAINT PK__bdg_juri__CB5FEDDEFB03CD56 PRIMARY KEY CLUSTERED (Jurisdiction_SK, Arrest_SK)
)

go


IF OBJECT_ID('bdg_jurisdiction') IS NOT NULL
    PRINT '<<< CREATED TABLE bdg_jurisdiction >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE bdg_jurisdiction >>>'
go

/* 
 * TABLE: bdg_ky 
 */

CREATE TABLE bdg_ky(
    KY_SK         int            NOT NULL,
    Arrest_SK     int            NOT NULL,
    DI_JobID      varchar(10)    NULL,
    DI_JobDate    datetime       NULL,
    CONSTRAINT PK__bdg_ky__8442B9FE22D7D66B PRIMARY KEY CLUSTERED (KY_SK, Arrest_SK)
)

go


IF OBJECT_ID('bdg_ky') IS NOT NULL
    PRINT '<<< CREATED TABLE bdg_ky >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE bdg_ky >>>'
go

/* 
 * TABLE: bdg_law 
 */

CREATE TABLE bdg_law(
    LAWCD_SK      int            NOT NULL,
    Arrest_SK     int            NOT NULL,
    DI_JobID      varchar(10)    NULL,
    DI_JobDate    datetime       NULL,
    CONSTRAINT PK__bdg_law__92A603602BC3552B PRIMARY KEY CLUSTERED (LAWCD_SK, Arrest_SK)
)

go


IF OBJECT_ID('bdg_law') IS NOT NULL
    PRINT '<<< CREATED TABLE bdg_law >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE bdg_law >>>'
go

/* 
 * TABLE: bdg_law_category 
 */

CREATE TABLE bdg_law_category(
    LAWCAT_SK     int            NOT NULL,
    Arrest_SK     int            NOT NULL,
    DI_JobID      varchar(10)    NULL,
    DI_JobDate    datetime       NULL,
    CONSTRAINT PK__bdg_law___22859371CFCFCD18 PRIMARY KEY CLUSTERED (LAWCAT_SK, Arrest_SK)
)

go


IF OBJECT_ID('bdg_law_category') IS NOT NULL
    PRINT '<<< CREATED TABLE bdg_law_category >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE bdg_law_category >>>'
go

/* 
 * TABLE: bdg_pd 
 */

CREATE TABLE bdg_pd(
    PD_SK         int            NOT NULL,
    Arrest_SK     int            NOT NULL,
    DI_JobID      varchar(10)    NULL,
    DI_JobDate    datetime       NULL,
    CONSTRAINT PK__bdg_pd__FB47B63C9213550A PRIMARY KEY CLUSTERED (PD_SK, Arrest_SK)
)

go


IF OBJECT_ID('bdg_pd') IS NOT NULL
    PRINT '<<< CREATED TABLE bdg_pd >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE bdg_pd >>>'
go

/* 
 * TABLE: bdg_race 
 */

CREATE TABLE bdg_race(
    Race_SK       int            NOT NULL,
    Arrest_SK     int            NOT NULL,
    DI_JobID      varchar(10)    NULL,
    DI_JobDate    datetime       NULL,
    CONSTRAINT PK__bdg_race__76B7B15DF16D1091 PRIMARY KEY CLUSTERED (Race_SK, Arrest_SK)
)

go


IF OBJECT_ID('bdg_race') IS NOT NULL
    PRINT '<<< CREATED TABLE bdg_race >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE bdg_race >>>'
go

/* 
 * TABLE: bdg_sex 
 */

CREATE TABLE bdg_sex(
    Sex_SK        int            NOT NULL,
    Arrest_SK     int            NOT NULL,
    DI_JobID      varchar(10)    NULL,
    DI_JobDate    datetime       NULL,
    CONSTRAINT PK__bdg_sex__5C10929B744D7D0E PRIMARY KEY CLUSTERED (Sex_SK, Arrest_SK)
)

go


IF OBJECT_ID('bdg_sex') IS NOT NULL
    PRINT '<<< CREATED TABLE bdg_sex >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE bdg_sex >>>'
go

/* 
 * TABLE: dim_age 
 */

CREATE TABLE dim_age(
    Age_SK        int            NOT NULL,
    AGE_GROUP     varchar(50)    NULL,
    DI_JobID      varchar(10)    NULL,
    DI_JobDate    datetime       NULL,
    CONSTRAINT PK__dim_age__139988D31D0C3A83 PRIMARY KEY CLUSTERED (Age_SK)
)

go


IF OBJECT_ID('dim_age') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_age >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_age >>>'
go

/* 
 * TABLE: dim_arrest 
 */

CREATE TABLE dim_arrest(
    Arrest_SK     int            NOT NULL,
    ARREST_KEY    int            NULL,
    DI_JobID      varchar(10)    NULL,
    DI_JobDate    datetime       NULL,
    CONSTRAINT PK__dim_arre__9B90AC9D09D8AD8D PRIMARY KEY CLUSTERED (Arrest_SK)
)

go


IF OBJECT_ID('dim_arrest') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_arrest >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_arrest >>>'
go

/* 
 * TABLE: dim_arrest_location 
 */

CREATE TABLE dim_arrest_location(
    Arrest_Loc_SK    int            NOT NULL,
    ARREST_BORO      char(1)        NULL,
    City             varchar(10)    NULL,
    State            varchar(10)    NULL,
    Country          varchar(10)    NULL,
    DI_JobID         varchar(10)    NULL,
    DI_Job_Date      datetime       NULL,
    CONSTRAINT PK__dim_arre__D553A4990ADC3FC9 PRIMARY KEY CLUSTERED (Arrest_Loc_SK)
)

go


IF OBJECT_ID('dim_arrest_location') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_arrest_location >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_arrest_location >>>'
go

/* 
 * TABLE: dim_arrest_precinct 
 */

CREATE TABLE dim_arrest_precinct(
    Arrest_Precint_SK    int            NOT NULL,
    ARREST_PRECINCT      int            NULL,
    DI_JobID             varchar(10)    NULL,
    DI_JobDate           datetime       NULL,
    CONSTRAINT PK__dim_arre__9E07BA571C10D888 PRIMARY KEY CLUSTERED (Arrest_Precint_SK)
)

go


IF OBJECT_ID('dim_arrest_precinct') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_arrest_precinct >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_arrest_precinct >>>'
go

/* 
 * TABLE: dim_date 
 */

CREATE TABLE dim_date(
    Date_SK        int            NOT NULL,
    ARREST_DATE    date           NULL,
    DI_JobID       varchar(10)    NULL,
    DI_JobDate     datetime       NULL,
    CONSTRAINT PK__dim_date__1F9B217DDD861DC0 PRIMARY KEY CLUSTERED (Date_SK)
)

go


IF OBJECT_ID('dim_date') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_date >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_date >>>'
go

/* 
 * TABLE: dim_jurisdiction 
 */

CREATE TABLE dim_jurisdiction(
    Jurisdiction_SK      int            NOT NULL,
    JURISDICTION_CODE    int            NULL,
    DI_JobID             varchar(10)    NULL,
    DI_JobDate           datetime       NULL,
    CONSTRAINT PK__dim_juri__02E6E71745D9F859 PRIMARY KEY CLUSTERED (Jurisdiction_SK)
)

go


IF OBJECT_ID('dim_jurisdiction') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_jurisdiction >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_jurisdiction >>>'
go

/* 
 * TABLE: dim_ky 
 */

CREATE TABLE dim_ky(
    KY_SK         int             NOT NULL,
    KY_CD         int             NULL,
    OFNS_DESC     varchar(100)    NULL,
    DI_JobID      varchar(10)     NULL,
    DI_JobDate    datetime        NULL,
    CONSTRAINT PK__dim_ky__4DFBB337FFFE2FA3 PRIMARY KEY CLUSTERED (KY_SK)
)

go


IF OBJECT_ID('dim_ky') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_ky >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_ky >>>'
go

/* 
 * TABLE: dim_law 
 */

CREATE TABLE dim_law(
    LAWCD_SK       int            NOT NULL,
    LAW_CODE       varchar(20)    NULL,
    DI_JobID       varchar(10)    NULL,
    DI_Job_Date    datetime       NULL,
    CONSTRAINT PK__dim_law__5B1F09A9DD51183F PRIMARY KEY CLUSTERED (LAWCD_SK)
)

go


IF OBJECT_ID('dim_law') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_law >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_law >>>'
go

/* 
 * TABLE: dim_law_category 
 */

CREATE TABLE dim_law_category(
    LAWCAT_SK      int            NOT NULL,
    LAW_CAT_CD     varchar(50)    NULL,
    DI_JobID       varchar(10)    NULL,
    DI_Job_Date    datetime       NULL,
    CONSTRAINT PK__dim_law___EB3C99B89524239B PRIMARY KEY CLUSTERED (LAWCAT_SK)
)

go


IF OBJECT_ID('dim_law_category') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_law_category >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_law_category >>>'
go

/* 
 * TABLE: dim_location 
 */

CREATE TABLE dim_location(
    Location_SK                 int            NOT NULL,
    X_COORD_CD                  int            NULL,
    Y_COORD_CD                  int            NULL,
    Latitude                    real           NULL,
    Longitude                   real           NULL,
    New_Georeferenced_Column    varchar(45)    NULL,
    DI_JobID                    varchar(10)    NULL,
    DI_JobDate                  datetime       NULL,
    CONSTRAINT PK__dim_loca__D2BAF7837A856B27 PRIMARY KEY CLUSTERED (Location_SK)
)

go


IF OBJECT_ID('dim_location') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_location >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_location >>>'
go

/* 
 * TABLE: dim_pd 
 */

CREATE TABLE dim_pd(
    PD_SK         int             NOT NULL,
    PD_CD         int             NULL,
    PD_DESC       varchar(100)    NULL,
    DI_JobID      varchar(10)     NULL,
    DI_JobDate    datetime        NULL,
    CONSTRAINT PK__dim_pd__32FEBCF54BCC4D56 PRIMARY KEY CLUSTERED (PD_SK)
)

go


IF OBJECT_ID('dim_pd') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_pd >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_pd >>>'
go

/* 
 * TABLE: dim_race 
 */

CREATE TABLE dim_race(
    Race_SK       int            NOT NULL,
    PERP_RACE     varchar(50)    NULL,
    DI_JobID      varchar(10)    NULL,
    DI_JobDate    datetime       NULL,
    CONSTRAINT PK__dim_race__BF0EBB94C4BDF6A7 PRIMARY KEY CLUSTERED (Race_SK)
)

go


IF OBJECT_ID('dim_race') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_race >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_race >>>'
go

/* 
 * TABLE: dim_sex 
 */

CREATE TABLE dim_sex(
    Sex_SK        int            NOT NULL,
    PERP_SEX      varchar(50)    NULL,
    DI_JobID      varchar(10)    NULL,
    DI_JobDate    datetime       NULL,
    CONSTRAINT PK__dim_sex__95A99852F92BD85A PRIMARY KEY CLUSTERED (Sex_SK)
)

go


IF OBJECT_ID('dim_sex') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_sex >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_sex >>>'
go

/* 
 * TABLE: nypd_fct_locations 
 */

CREATE TABLE nypd_fct_locations(
    Arrest_SK        int            NOT NULL,
    Arrest_Loc_SK    int            NOT NULL,
    Location_SK      int            NOT NULL,
    DI_JobID         varchar(10)    NULL,
    DI_JobDate       datetime       NULL,
    CONSTRAINT PK__nypd_fct__94172C23D62B731E PRIMARY KEY CLUSTERED (Arrest_SK, Arrest_Loc_SK, Location_SK)
)

go


IF OBJECT_ID('nypd_fct_locations') IS NOT NULL
    PRINT '<<< CREATED TABLE nypd_fct_locations >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE nypd_fct_locations >>>'
go

/* 
 * TABLE: nypd_raw 
 */

CREATE TABLE nypd_raw(
    nypd_sk                     int             NOT NULL,
    ARREST_KEY                  int             NULL,
    ARREST_DATE                 date            NULL,
    PD_CD                       int             NULL,
    PD_DESC                     varchar(100)    NULL,
    KY_CD                       int             NULL,
    OFNS_DESC                   varchar(100)    NULL,
    LAW_CODE                    varchar(20)     NULL,
    LAW_CAT_CD                  char(1)         NULL,
    ARREST_BORO                 char(1)         NULL,
    ARREST_PRECINCT             int             NULL,
    JURISDICTION_CODE           int             NULL,
    AGE_GROUP                   varchar(10)     NULL,
    PERP_SEX                    char(1)         NULL,
    PERP_RACE                   varchar(30)     NULL,
    X_COORD_CD                  real            NULL,
    Y_COORD_CD                  real            NULL,
    Latitude                    real            NULL,
    Longitude                   real            NULL,
    New_Georeferenced_Column    varchar(45)     NULL,
    job_date                    datetime        NULL,
    job_id                      varchar(10)     NULL,
    CONSTRAINT PK__nypd_raw__25FACC23D482842B PRIMARY KEY CLUSTERED (nypd_sk)
)

go


IF OBJECT_ID('nypd_raw') IS NOT NULL
    PRINT '<<< CREATED TABLE nypd_raw >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE nypd_raw >>>'
go

/* 
 * TABLE: bdg_age 
 */

ALTER TABLE bdg_age ADD CONSTRAINT Refdim_age7 
    FOREIGN KEY (Age_SK)
    REFERENCES dim_age(Age_SK)
go

ALTER TABLE bdg_age ADD CONSTRAINT Refdim_arrest16 
    FOREIGN KEY (Arrest_SK)
    REFERENCES dim_arrest(Arrest_SK)
go


/* 
 * TABLE: bdg_arrest_precinct 
 */

ALTER TABLE bdg_arrest_precinct ADD CONSTRAINT Refdim_arrest19 
    FOREIGN KEY (Arrest_SK)
    REFERENCES dim_arrest(Arrest_SK)
go

ALTER TABLE bdg_arrest_precinct ADD CONSTRAINT Refdim_arrest_precinct23 
    FOREIGN KEY (Arrest_Precint_SK)
    REFERENCES dim_arrest_precinct(Arrest_Precint_SK)
go


/* 
 * TABLE: bdg_date 
 */

ALTER TABLE bdg_date ADD CONSTRAINT Refdim_date2 
    FOREIGN KEY (Date_SK)
    REFERENCES dim_date(Date_SK)
go

ALTER TABLE bdg_date ADD CONSTRAINT Refdim_arrest12 
    FOREIGN KEY (Arrest_SK)
    REFERENCES dim_arrest(Arrest_SK)
go


/* 
 * TABLE: bdg_jurisdiction 
 */

ALTER TABLE bdg_jurisdiction ADD CONSTRAINT Refdim_jurisdiction4 
    FOREIGN KEY (Jurisdiction_SK)
    REFERENCES dim_jurisdiction(Jurisdiction_SK)
go

ALTER TABLE bdg_jurisdiction ADD CONSTRAINT Refdim_arrest15 
    FOREIGN KEY (Arrest_SK)
    REFERENCES dim_arrest(Arrest_SK)
go


/* 
 * TABLE: bdg_ky 
 */

ALTER TABLE bdg_ky ADD CONSTRAINT Refdim_ky5 
    FOREIGN KEY (KY_SK)
    REFERENCES dim_ky(KY_SK)
go

ALTER TABLE bdg_ky ADD CONSTRAINT Refdim_arrest18 
    FOREIGN KEY (Arrest_SK)
    REFERENCES dim_arrest(Arrest_SK)
go


/* 
 * TABLE: bdg_law 
 */

ALTER TABLE bdg_law ADD CONSTRAINT Refdim_law6 
    FOREIGN KEY (LAWCD_SK)
    REFERENCES dim_law(LAWCD_SK)
go

ALTER TABLE bdg_law ADD CONSTRAINT Refdim_arrest11 
    FOREIGN KEY (Arrest_SK)
    REFERENCES dim_arrest(Arrest_SK)
go


/* 
 * TABLE: bdg_law_category 
 */

ALTER TABLE bdg_law_category ADD CONSTRAINT Refdim_law_category8 
    FOREIGN KEY (LAWCAT_SK)
    REFERENCES dim_law_category(LAWCAT_SK)
go

ALTER TABLE bdg_law_category ADD CONSTRAINT Refdim_arrest14 
    FOREIGN KEY (Arrest_SK)
    REFERENCES dim_arrest(Arrest_SK)
go


/* 
 * TABLE: bdg_pd 
 */

ALTER TABLE bdg_pd ADD CONSTRAINT Refdim_arrest17 
    FOREIGN KEY (Arrest_SK)
    REFERENCES dim_arrest(Arrest_SK)
go

ALTER TABLE bdg_pd ADD CONSTRAINT Refdim_pd22 
    FOREIGN KEY (PD_SK)
    REFERENCES dim_pd(PD_SK)
go


/* 
 * TABLE: bdg_race 
 */

ALTER TABLE bdg_race ADD CONSTRAINT Refdim_race1 
    FOREIGN KEY (Race_SK)
    REFERENCES dim_race(Race_SK)
go

ALTER TABLE bdg_race ADD CONSTRAINT Refdim_arrest10 
    FOREIGN KEY (Arrest_SK)
    REFERENCES dim_arrest(Arrest_SK)
go


/* 
 * TABLE: bdg_sex 
 */

ALTER TABLE bdg_sex ADD CONSTRAINT Refdim_sex3 
    FOREIGN KEY (Sex_SK)
    REFERENCES dim_sex(Sex_SK)
go

ALTER TABLE bdg_sex ADD CONSTRAINT Refdim_arrest13 
    FOREIGN KEY (Arrest_SK)
    REFERENCES dim_arrest(Arrest_SK)
go


/* 
 * TABLE: nypd_fct_locations 
 */

ALTER TABLE nypd_fct_locations ADD CONSTRAINT Refdim_arrest9 
    FOREIGN KEY (Arrest_SK)
    REFERENCES dim_arrest(Arrest_SK)
go

ALTER TABLE nypd_fct_locations ADD CONSTRAINT Refdim_location20 
    FOREIGN KEY (Location_SK)
    REFERENCES dim_location(Location_SK)
go

ALTER TABLE nypd_fct_locations ADD CONSTRAINT Refdim_arrest_location21 
    FOREIGN KEY (Arrest_Loc_SK)
    REFERENCES dim_arrest_location(Arrest_Loc_SK)
go


