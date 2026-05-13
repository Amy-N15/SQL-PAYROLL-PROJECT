/*
===============================================================================
DDL Script: Create Landing Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'LANDING' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'LANDING' Tables
===============================================================================
*/

-- LANDING.lnd_allowance
IF OBJECT_ID('landing.lnd_allowance', 'U') IS NOT NULL
    DROP TABLE landing.lnd_allowance;

CREATE TABLE landing.lnd_allowance (
	allowance_id NVARCHAR(50),
	employee_id	NVARCHAR(50),
	allowance_type NVARCHAR(50),
	allowance_amount DECIMAL(10,2),	
	allowance_start_date NVARCHAR(50),	
	allowance_end_date NVARCHAR(50)
);

-- LANDING.lnd_bonus
IF OBJECT_ID('landing.lnd_bonus', 'U') IS NOT NULL
	DROP TABLE landing.lnd_bonus;

CREATE TABLE landing.lnd_bonus (
	bonus_id		NVARCHAR(50),	
	employee_id		NVARCHAR(50),	
	bonus_type		NVARCHAR(50),	
	bonus_amount	DECIMAL(10,2),	
	bonus_date		NVARCHAR(50),
);

-- LANDING.lnd_contract_details
IF OBJECT_ID('landing.lnd_contract_details', 'U') IS NOT NULL
	DROP TABLE landing.lnd_contract_details;

CREATE TABLE landing.lnd_contract_details(
	contract_id			NVARCHAR(50),
	employee_id			NVARCHAR(50),
	start_date			NVARCHAR(50),
	end_date			NVARCHAR(50),
	pay_rate			DECIMAL(10,2),
	job_title			NVARCHAR(50),
	payment_frequency	NVARCHAR(50),
	contract_type		NVARCHAR(50),
	employment_type		NVARCHAR(50),
	contract_status		NVARCHAR(50)
);

-- LANDING.lnd_employee_details
IF OBJECT_ID('landing.lnd_employee_details', 'U') IS NOT NULL
	DROP TABLE landing.lnd_employee_details;

CREATE TABLE landing.lnd_employee_details(
	employee_id				NVARCHAR(50),
	employee_first_name		NVARCHAR(50),
	employee_middle_name	NVARCHAR(50),
	employee_last_name		NVARCHAR(50),
	employee_gender			NVARCHAR(50),
	employee_location		NVARCHAR(50),
	date_of_birth			NVARCHAR(50),
	hire_date				NVARCHAR(50),
	termination_date		NVARCHAR(50),
	employee_status			NVARCHAR(50)
);

-- LANDING.lnd_employee_leave
IF OBJECT_ID('landing.lnd_employee_leave', 'U') IS NOT NULL
	DROP TABLE landing.lnd_employee_leave;

CREATE TABLE landing.lnd_employee_leave(
	leave_id			NVARCHAR(50),
	employee_id			NVARCHAR(50),
	leave_type			NVARCHAR(50),
	leave_start_date	DATE,
	leave_end_date		DATE,
	leave_hours			DECIMAL(10,2)
);

-- LANDING.lnd_junior_pay_rates
IF OBJECT_ID('landing.lnd_junior_pay_rates', 'U') IS NOT NULL
	DROP TABLE landing.lnd_junior_pay_rates;

CREATE TABLE landing.lnd_junior_pay_rates(
	age							NVARCHAR(50),
	percent_of_adult_pay_rate	DECIMAL(10,2)
);

-- LANDING.lnd_minimum_pay_rates
IF OBJECT_ID('landing.lnd_minimum_pay_rates', 'U') IS NOT NULL
	DROP TABLE landing.lnd_minimum_pay_rates;

CREATE TABLE landing.lnd_minimum_pay_rates(
	pay_rate_id				NVARCHAR(50),
	effect_from				NVARCHAR(50),
	effect_to				NVARCHAR(50),
	hourly_permanent_rate	DECIMAL(10,2),
	hourly_casual_rate		DECIMAL(10,2)
);

-- LANDING.lnd_pay_rate_adjustments
IF OBJECT_ID('landing.lnd_pay_rate_adjustments', 'U') IS NOT NULL
	DROP TABLE landing.lnd_pay_rate_adjustments;

CREATE TABLE landing.lnd_pay_rate_adjustments(
	Rate_Type			NVARCHAR(50),
	Description			NVARCHAR(100),
	Rate_Calculation	NVARCHAR(50)
);

-- LANDING.lnd_roster
IF OBJECT_ID('landing.lnd_roster', 'U') IS NOT NULL
	DROP TABLE landing.lnd_roster;

CREATE TABLE landing.lnd_roster(
	roster_id		NVARCHAR(50),
	employee_id		NVARCHAR(50),
	shift			NVARCHAR(50),
	hours			DECIMAL(10,2),
	work_date		NVARCHAR(50),
	services		NVARCHAR(50),
	location		NVARCHAR(50),
	pay_period_id	NVARCHAR(50)
);

-- LANDING.lnd_tax_rates
IF OBJECT_ID('landing.lnd_tax_rates', 'U') IS NOT NULL
	DROP TABLE landing.lnd_tax_rates;

CREATE TABLE landing.lnd_tax_rates(
	Taxable_income		NVARCHAR(50),
	Tax_on_this_income	NVARCHAR(50),
	Year				NVARCHAR(50),
	Note				NVARCHAR(255),
	Start_Range			NVARCHAR(50),
	End_Range			NVARCHAR(50),
	Date_Start			NVARCHAR(50),
	Date_End			NVARCHAR(50),
	Fixed_Tax			NVARCHAR(50),
	Cumulative_Tax		DECIMAL(10,3),
);

-- LANDING.lnd_time_off_in_lieu
IF OBJECT_ID('landing.lnd_time_off_in_lieu', 'U') IS NOT NULL
	DROP TABLE landing.lnd_time_off_in_lieu;

CREATE TABLE landing.lnd_time_off_in_lieu(
	toil_id				NVARCHAR(50),
	employee_id			NVARCHAR(50),
	overtime_date		DATE,
	toil_hours_accrued	INT,
	toil_usage_date		DATE
);

-- LANDING.lnd_timesheet
IF OBJECT_ID('landing.lnd_timesheet', 'U') IS NOT NULL
	DROP TABLE landing.lnd_timesheet;

CREATE TABLE landing.lnd_timesheet(
	timesheet_id					NVARCHAR(50),
	employee_code					NVARCHAR(50),
	timesheet_transaction_date		NVARCHAR(50),
	start_time						TIME,
	end_time						TIME,
	timesheet_transaction_hours		DECIMAL(10,2),
	pay_period_id					NVARCHAR(50)
);

-- LANDING.lnd_combined_holidays
IF OBJECT_ID('landing.lnd_combined_holidays', 'U') IS NOT NULL
	DROP TABLE landing.lnd_combined_holidays;

CREATE TABLE landing.lnd_combined_holidays(
	Date							NVARCHAR(255),
	Holiday_Name					NVARCHAR(255),
	Information_More_Information	NVARCHAR(MAX),
	Jurisdiction					NVARCHAR(255),
	Day_Of_Week						NVARCHAR(255)
);
