create index IX_25D284FB on Emp_Bank (uuid_);
create index IX_64DA244D on Emp_Bank (uuid_, companyId);
create unique index IX_4B495A0F on Emp_Bank (uuid_, groupId);

create index IX_FF6B3B96 on Emp_Banks_Emoloyees (bankId);
create index IX_EF355DA3 on Emp_Banks_Emoloyees (bank_id);
create index IX_5360F488 on Emp_Banks_Emoloyees (employeeId);
create index IX_19F6C2F1 on Emp_Banks_Emoloyees (employee_id);

create index IX_50151997 on Emp_Banks_Employees (bankId);
create index IX_B3C73FC2 on Emp_Banks_Employees (bank_id);
create index IX_5FF9EA09 on Emp_Banks_Employees (employeeId);
create index IX_A07C7D90 on Emp_Banks_Employees (employee_id);

create index IX_3FD29849 on Emp_Employee (uuid_);
create index IX_9240943F on Emp_Employee (uuid_, companyId);
create unique index IX_530F1E81 on Emp_Employee (uuid_, groupId);

create index IX_7734802E on Emp_Position (uuid_);
create index IX_D2613B3A on Emp_Position (uuid_, companyId);
create unique index IX_A393483C on Emp_Position (uuid_, groupId);