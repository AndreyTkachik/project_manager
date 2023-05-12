create view pm.project_manager_users as
	(select pm.user.user_name from pm.user
		order by user_name)

create view pm.project_and_status as
	(select pm.project.project_name, case
		when pm.project.project_status = 0 then 'builded' when pm.project.project_status = 1 then 'developing'
		when pm.project.project_status = 2  then 'done' when pm.project.project_status = 3 then 'freezed'
		when pm.project.project_status = 4 then 'canceled' else 'status null' end as status from pm.project
		order by project_name)
		
create view pm.project_and_dealines as
	(select pm.project.project_name, n pm.project_deadlines.deadline_date from pm.project
	inner join pm.project_deadlines on (pm.project.project_id = pm.project_deadlines.project_id))
	
create view pm.project_and_user as
	(select pm.user.user_name as user, pm.project.project_name as project from pm.user
	inner join pm.project_user on (pm.user.user_id = pm.project_user.user_id)
	inner join pm.project on (pm.project.project_id = pm.project_user.project_id))
	
create view pm.teams_and_projects as
	(select pm.users_team.cmd_name as team_name, pm.project.project_name as project from pm.users_team
	inner join pm.project on (pm.users_team.project_id = pm.project.project_id))
	
create view pm.users_last_activity as
	(select pm.user.user_name as user, pm.project_changes.last_chng_time as last_change from pm.user
	inner join pm.project_changes on (pm.user.user_id = pm.project_changes.user_id))
