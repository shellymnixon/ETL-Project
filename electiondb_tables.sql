﻿
CREATE TABLE voter_hist (
    ncid varchar   NOT NULL,
    county_id int   NOT NULL,
    county_desc varchar   NOT NULL,
    voter_reg_number char   NOT NULL,
    election_lbl char   NOT NULL,
    election_desc varchar   NOT NULL,
    voting_method varchar   NOT NULL,
    voted_party_cd varchar   NOT NULL,
    voted_party_desc varchar   NOT NULL,
    pct_label varchar   NOT NULL,
    pct_description varchar   NOT NULL,
    voted_county_id varchar   NOT NULL,
    voted_county_desc varchar   NOT NULL,
    vtd_label varchar   NOT NULL,
    vtd_description varchar   NOT NULL,
    CONSTRAINT pk_ncvhis PRIMARY KEY (
        ncid
     )
);

CREATE TABLE voter_demo (
    ncid varchar   NOT NULL,
    last_name varchar   NOT NULL,
    first_name varchar   NOT NULL,
    middle_name varchar   NOT NULL,
    name_suffix_lbl char   NOT NULL,
    res_street_address varvarchar   NOT NULL,
    res_city_desc varchar   NOT NULL,
    state_cd varchar   NOT NULL,
    zip_code char   NOT NULL,
    mail_addr1 varchar   NOT NULL,
    mail_addr2 varchar   NOT NULL,
    mail_addr3 varchar   NOT NULL,
    mail_addr4 varchar   NOT NULL,
    mail_city varchar   NOT NULL,
    mail_state varchar   NOT NULL,
    mail_zipcode char   NOT NULL,
    full_phone_number varchar   NOT NULL,
    birth_year char   NOT NULL,
    drivers_lic char   NOT NULL,
    race_code char   NOT NULL,
    ethnic_code char   NOT NULL,
    party_cd char   NOT NULL,
    gender_code char   NOT NULL,
    birth_age int   NOT NULL,
    birth_state varchar   NOT NULL,
    registr_dt char   NOT NULL,
    status_cd char   NOT NULL,
     voter_reg_num char   NOT NULL,
    voter_status_desc varchar   NOT NULL,
    reason_cd varchar   NOT NULL,
    voter_status_reason_desc varchar   NOT NULL
);

CREATE TABLE voter_dist (
    ncid char   NOT NULL,
    county_id int   NOT NULL,
    precinct_abbrv varchar   NOT NULL,
    precinct_desc varchar   NOT NULL,
    municipality_abbrv varchar   NOT NULL,
    ward_abbrv varchar   NOT NULL,
    cong_dist_abbrv varchar   NOT NULL,
    super_court_abbrv varchar   NOT NULL,
    judic_dist_abbrv varchar   NOT NULL,
    nc_senate_abbrv varchar   NOT NULL,
    nc_house_abbrv varchar   NOT NULL,
    county_commiss_abbrv varchar   NOT NULL,
    township_abbrv varchar   NOT NULL,
    school_dist_abbrv varchar   NOT NULL,
    fire_dist_abbrv varchar   NOT NULL,
    water_dist_abbrv varchar   NOT NULL,
    sewer_dist_abbrv varchar   NOT NULL,
    sanit_dist_abbrv varchar   NOT NULL,
    rescue_dist_abbrv varchar   NOT NULL,
    munic_dist_abbrv varchar   NOT NULL,
    dist_1_abbrv varchar   NOT NULL,
    vtd_abbrv varchar   NOT NULL,
    vtd_desc varchar   NOT NULL
);

ALTER TABLE ncvoterdemo ADD CONSTRAINT fk_ncvoterdemo_ncid FOREIGN KEY(ncid)
REFERENCES ncvhis (ncid);

ALTER TABLE ncvoterstatus ADD CONSTRAINT fk_ncvoterstatus_ncid FOREIGN KEY(ncid)
REFERENCES ncvhis (ncid);

ALTER TABLE ncvoterdist ADD CONSTRAINT fk_ncvoterdist_ncid FOREIGN KEY(ncid)
REFERENCES ncvhis (ncid);

