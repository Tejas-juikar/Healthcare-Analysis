# KPI1 -  Total Providers
select count(Rndrng_NPI) from healthcare;

# KPI2 - Designation Wise Providers Count
select Rndrng_Prvdr_Crdntls as designation, count(Rndrng_NPI) as count  from healthcare 
where Rndrng_Prvdr_Crdntls is NOT NULL
group by Rndrng_Prvdr_Crdntls 
order by count(Rndrng_NPI) desc;

# KPI3 - City Wise Providers
select Rndrng_Prvdr_City as city, count(Rndrng_NPI) as count from healthcare 
group by Rndrng_Prvdr_City
order by count(Rndrng_NPI) desc;
