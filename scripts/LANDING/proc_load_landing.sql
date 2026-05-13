/*
===============================================================================
Stored Procedure: Load LANDING Layer (Source -> LANDING)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'LANDING' schema from external CSV files. 
    It performs the following actions:
    - Truncates the LANDING tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to LANDING tables.

Parameters:
    None. 
	  This stored procedure does not accept any parameters or return any values.

Usage Example:
    EXEC landing.load_landing;
===============================================================================
*/
CREATE OR ALTER PROCEDURE landing.load_landing AS
BEGIN
	DECLARE @start_time DATETIME, @end_time DATETIME, @batch_start_time DATETIME, @batch_end_time DATETIME; 
	BEGIN TRY
		SET @batch_start_time = GETDATE();
		PRINT '================================================';
		PRINT 'Loading LANDING Layer';
		PRINT '================================================';

		-- Landing.lnd_allowance
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: landing.lnd_allowance';
		TRUNCATE TABLE landing.lnd_allowance;

		PRINT '>> Inserting Data Into: landing.lnd_allowance';
		BULK INSERT landing.lnd_allowance
		FROM 'C:\Users\phuon\OneDrive\Documents\AMY_IT\SQL_Projects\Payroll_Project\datasets\allowance.csv'
		WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';


		-- Landing.lnd_bonus
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: landing.lnd_bonus';
		TRUNCATE TABLE landing.lnd_bonus;

		PRINT '>> Inserting Data Into: landing.lnd_bonus';
		BULK INSERT landing.lnd_bonus
		FROM 'C:\Users\phuon\OneDrive\Documents\AMY_IT\SQL_Projects\Payroll_Project\datasets\bonus.csv'
		WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';

		-- Landing.lnd_contract_details
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: landing.lnd_contract_details';
		TRUNCATE TABLE landing.lnd_contract_details;

		PRINT '>> Inserting Data Into: landing.lnd_contract_details';
		BULK INSERT landing.lnd_contract_details
		FROM 'C:\Users\phuon\OneDrive\Documents\AMY_IT\SQL_Projects\Payroll_Project\datasets\contract_details.csv'
		WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';

		-- Landing.lnd_employee_details
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: landing.lnd_employee_details';
		TRUNCATE TABLE landing.lnd_employee_details;

		PRINT '>> Inserting Data Into: landing.lnd_employee_details';
		BULK INSERT landing.lnd_employee_details
		FROM 'C:\Users\phuon\OneDrive\Documents\AMY_IT\SQL_Projects\Payroll_Project\datasets\employee_details.csv'
		WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';

		-- Landing.lnd_employee_leave
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: landing.lnd_employee_leave';
		TRUNCATE TABLE landing.lnd_employee_leave;

		PRINT '>> Inserting Data Into: landing.lnd_employee_leave';
		BULK INSERT landing.lnd_employee_leave
		FROM 'C:\Users\phuon\OneDrive\Documents\AMY_IT\SQL_Projects\Payroll_Project\datasets\employee_leave.csv'
		WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';

		-- Landing.lnd_junior_pay_rates
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: landing.lnd_junior_pay_rates';
		TRUNCATE TABLE landing.lnd_junior_pay_rates;

		PRINT '>> Inserting Data Into: landing.lnd_junior_pay_rates';
		BULK INSERT landing.lnd_junior_pay_rates
		FROM 'C:\Users\phuon\OneDrive\Documents\AMY_IT\SQL_Projects\Payroll_Project\datasets\junior_pay_rates.csv'
		WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';

		-- Landing.lnd_minimum_pay_rates
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: landing.lnd_minimum_pay_rates';
		TRUNCATE TABLE landing.lnd_minimum_pay_rates;

		PRINT '>> Inserting Data Into: landing.lnd_minimum_pay_rates';
		BULK INSERT landing.lnd_minimum_pay_rates
		FROM 'C:\Users\phuon\OneDrive\Documents\AMY_IT\SQL_Projects\Payroll_Project\datasets\minimum_pay_rates.csv'
		WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';

		-- Landing.lnd_pay_rate_adjustments
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: landing.lnd_pay_rate_adjustments';
		TRUNCATE TABLE landing.lnd_pay_rate_adjustments;

		PRINT '>> Inserting Data Into: landing.lnd_pay_rate_adjustments';
		BULK INSERT landing.lnd_pay_rate_adjustments
		FROM 'C:\Users\phuon\OneDrive\Documents\AMY_IT\SQL_Projects\Payroll_Project\datasets\pay_rate_adjustments.csv'
		WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';
		
		-- Landing.lnd_roster
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: landing.lnd_roster';
		TRUNCATE TABLE landing.lnd_roster;

		PRINT '>> Inserting Data Into: landing.lnd_roster';
		BULK INSERT landing.lnd_roster
		FROM 'C:\Users\phuon\OneDrive\Documents\AMY_IT\SQL_Projects\Payroll_Project\datasets\roster.csv'
		WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';

		-- Landing.lnd_tax_rates
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: landing.lnd_tax_rates';
		TRUNCATE TABLE landing.lnd_tax_rates;

		PRINT '>> Inserting Data Into: landing.lnd_tax_rates';
		BULK INSERT landing.lnd_tax_rates
		FROM 'C:\Users\phuon\OneDrive\Documents\AMY_IT\SQL_Projects\Payroll_Project\datasets\tax_rates.csv'
		WITH (
		FORMAT = 'CSV',
		FIRSTROW = 2,
		FIELDQUOTE = '"',
		ROWTERMINATOR = '0x0a',
		TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';

		-- Landing.lnd_time_off_in_lieu
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: landing.lnd_time_off_in_lieu';
		TRUNCATE TABLE landing.lnd_time_off_in_lieu;

		PRINT '>> Inserting Data Into: landing.lnd_time_off_in_lieu';
		BULK INSERT landing.lnd_time_off_in_lieu
		FROM 'C:\Users\phuon\OneDrive\Documents\AMY_IT\SQL_Projects\Payroll_Project\datasets\time_off_in_lieu.csv'
		WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';

		-- Landing.lnd_timesheet
		SET @start_time = GETDATE();
		PRINT '>> Truncating Table: landing.lnd_timesheet';
		TRUNCATE TABLE landing.lnd_timesheet;

		PRINT '>> Inserting Data Into: landing.lnd_timesheet';
		BULK INSERT landing.lnd_timesheet
		FROM 'C:\Users\phuon\OneDrive\Documents\AMY_IT\SQL_Projects\Payroll_Project\datasets\timesheet.csv'
		WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '>> -------------';


		SET @batch_end_time = GETDATE();
		PRINT '=========================================='
		PRINT 'Loading LANDING Layer is Completed';
        PRINT '   - Total Load Duration: ' + CAST(DATEDIFF(SECOND, @batch_start_time, @batch_end_time) AS NVARCHAR) + ' seconds';
		PRINT '=========================================='
	END TRY
	BEGIN CATCH
		PRINT '=========================================='
		PRINT 'ERROR OCCURED DURING LOADING LANDING LAYER'
		PRINT 'Error Message' + ERROR_MESSAGE();
		PRINT 'Error Message' + CAST (ERROR_NUMBER() AS NVARCHAR);
		PRINT 'Error Message' + CAST (ERROR_STATE() AS NVARCHAR);
		PRINT '=========================================='
	END CATCH		
END

