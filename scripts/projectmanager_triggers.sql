create trigger add_new_deadline_check before insert on pm.project_deadlines 
	for each row
	execute function pm.check_correct_deadline()
		
create trigger cnhg_project_status before update or insert on pm.project 
	for each row
	execute function check_correct_status()
