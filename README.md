# Pewlett-Hackard-analysis

## Overview of the analysis: 
In the Pewlett-Hackard-analysis, we are helping Bobby, a HR analyst at Pewlett-Hackard, with future proofing the company by looking at the departments of the  employees who are eligible for retirement. We are also looking to see which employees can recieve a retirement package. Pewlett-Hackard is looking to move their data to SQL. With the help of SQL, we will be able to help Bobby with determining the number of employees who can recieve a retirement package.

## Results: 

- 1. Looking at the "Retiring_titles" table, there are a lot of senior positions that will need to be filled. The senior position count is 50842. This is very concerning as that means Pewlett-Hackard will need to either promote a lot of their current employees or get new hires outside of the company. The latter is more likely.

- 2. As mentioned above, Pewlett-Hackard will more than likely to get new hires outside of the company. With over 15000 engineers and staff Memebers that are not in the senior role, it will be really hard to fill those positions in a short amount of time with the proper training.
 
 ![retiring_titles](https://user-images.githubusercontent.com/109183214/192666170-6a8e8463-5e53-4775-ae10-2c1cbc78e8b1.png)

- 3. Looking at the "Mentorship_Eligibilty" table, there is a little over 1500 employees eligible for the mentorship. Even though that is a decent number, that will not be enough to be able to cover for all the employees retiring soon.

- 4. Pewlett-Hackard will probably need to hire more employees into their development department as that is the group of employees likely to retire soon.

## Summary: 

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?

From looking at the "Retiring_titles" table, it looks like 72458 roles will need to be hire to counteract the silver tsunami. Hopefully for Pewlett-Hackard, not all of those positions will be needed at the same time.

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

No. As mentioned earlier, there are over 1500 employees eligible for the mentorship. With nearly 250000 employees excluding the employees eligible for retirement and mentorship, there are too little mentors who can transfer the knowledge to the next generation quick enough.

### Possible Queries and/or Tables Providing Further Insight:
Additional Query: One possible query is to expand the number of employees eligible for mentorship. One way would be to add the potential retiring employees as they may not be retiring soon and could possible help the next generation because retiring. Another way is by adjusting the query to capture current employees whose birth dates are outside of the current one-year eligibility criteria. Both ways will not only help the employees already at Pewlett Hackard, but any potential new hires as well.

Additional Table: Deparments of the retiring employees. This way, if there are an abundance of workers in the same department, they can transfer into the new position while knowing the department.
