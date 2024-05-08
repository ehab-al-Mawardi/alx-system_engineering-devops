Issue Summary:

Duration:
<br>
Start Time: May 8th, 2024, 2:15 PM (EEST)
End Time: May 8th, 2024, 5:30 PM (EEST)
<br>

![1](https://github.com/ehab-al-Mawardi/alx-system_engineering-devops/assets/75522554/01ddfd05-1ec7-46fe-8b6e-ce36f548db2d)


Impact:

Our product listing service went rogue, causing a blackout for all product listings on our e-commerce platform. Customers encountered a frustrating "Product Not Found" message, hindering their shopping experience. This impacted approximately 70% of our user base during a critical sales period.
Timeline:

Detection: Our usual eagle-eyed customer support team noticed a surge in support tickets regarding missing products at 2:30 PM (EEST).
Actions Taken: The DevOps team immediately investigated the product listing service. Initial checks revealed normal server health metrics, leading us to suspect a problem with the underlying database.
Misleading Investigation Paths: We prioritized a database performance optimization route, but queries remained slow.
Escalation: After an hour of troubleshooting, the incident was escalated to the database administration team.
Resolution: The DBA team discovered a recently deployed schema change had caused database locking, hindering product listing retrieval. The schema change was reverted at 5:15 PM (EEST), restoring product listings.
<br>
Root Cause and Resolution:
![2](https://github.com/ehab-al-Mawardi/alx-system_engineering-devops/assets/75522554/ec0173e7-c180-4723-9657-fd46273373a2)

Root Cause: A recent database schema update intended to improve search functionality resulted in unintended locking behavior, significantly impacting query performance.
Resolution: The problematic schema change was reverted, restoring normal database operation and product listing functionality.

Corrective and Preventative Measures:

Improvements/Fixes:
![3](https://github.com/ehab-al-Mawardi/alx-system_engineering-devops/assets/75522554/30f7a6a5-7cc1-4077-9ddd-72d116231bef)

Implement a more rigorous code review process for database schema changes.
Integrate automated database performance testing into our deployment pipeline.
<br>
Tasks:
Task 1: Conduct a code review workshop to emphasize the importance of considering edge cases during database schema changes.
Task 2: Set up automated performance checks to monitor database health after deployments.
Task 3: Review rollback procedures for database schema changes to ensure a faster recovery time in future incidents.
This outage serves as a reminder of the importance of thorough testing and impact analysis before deploying database changes, especially during critical sales periods. By implementing the corrective measures outlined above, we aim to prevent similar incidents in the future and provide a seamless shopping experience for our customers.
