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
    CONSTRAINT pk_voter_hist PRIMARY KEY (
        ncid
     )
);

CREATE TABLE voter_demo (
    ncid varchar   NOT NULL,
    res_city_desc varchar   NOT NULL,
    state_cd varchar   NOT NULL,
    zip_code char   NOT NULL,
    birth_year char   NOT NULL,
    drivers_lic char   NOT NULL,
    voter_reg_num char   NOT NULL,
    status_cd char   NOT NULL,
    voter_status_desc varchar   NOT NULL,
    reason_cd varchar   NOT NULL,
    voter_status_reason_desc varchar   NOT NULL,
    race_code char   NOT NULL,
    ethnic_code char   NOT NULL,
    party_cd char   NOT NULL,
    gender_code char   NOT NULL,
    birth_age int   NOT NULL,
    birth_state varchar   NOT NULL,
    registr_dt char   NOT NULL
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

CREATE TABLE voter_identifiers (
    ncid char   NOT NULL,
    last_name varchar   NOT NULL,
    first_name varchar   NOT NULL,
    middle_name varchar   NOT NULL,
    name_suffix_lbl char   NOT NULL,
    res_street_address varvarchar   NOT NULL,
    mail_addr1 varchar   NOT NULL,
    mail_addr2 varchar   NOT NULL,
    mail_addr3 varchar   NOT NULL,
    mail_addr4 varchar   NOT NULL,
    mail_city varchar   NOT NULL,
    mail_state varchar   NOT NULL,
    mail_zipcode char   NOT NULL,
    full_phone_number varchar   NOT NULL
);

CREATE TABLE county_codes (
    county char   NOT NULL,
    county_id int   NOT NULL
);

CREATE TABLE ethnic_codes (
    ethnicity char   NOT NULL,
    description char   NOT NULL
);

CREATE TABLE race_codes (
    race char   NOT NULL,
    description char   NOT NULL
);

CREATE TABLE status_codes (
    status char   NOT NULL,
    description char   NOT NULL
);

ALTER TABLE voter_demo ADD CONSTRAINT fk_voter_demo_ncid FOREIGN KEY(ncid)
REFERENCES voter_hist (ncid);

ALTER TABLE voter_dist ADD CONSTRAINT fk_voter_dist_ncid FOREIGN KEY(ncid)
REFERENCES voter_hist (ncid);

ALTER TABLE voter_identifiers ADD CONSTRAINT fk_voter_identifiers_ncid FOREIGN KEY(ncid)
REFERENCES voter_hist (ncid);

ALTER TABLE county_codes ADD CONSTRAINT fk_county_codes_county_id FOREIGN KEY(county_id)
REFERENCES voter_hist (county_id);

ALTER TABLE ethnic_codes ADD CONSTRAINT fk_ethnic_codes_ethnicity FOREIGN KEY(ethnicity)
REFERENCES voter_demo (ethnic_code);

ALTER TABLE race_codes ADD CONSTRAINT fk_race_codes_race FOREIGN KEY(race)
REFERENCES voter_demo (race_code);

ALTER TABLE status_codes ADD CONSTRAINT fk_status_codes_status FOREIGN KEY(status)
REFERENCES voter_demo (status_cd);

