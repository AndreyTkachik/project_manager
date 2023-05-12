create procedure pm.new_change (id_of_user int, name_of_project varchar) as $$
	update pm.project_changes 
		set last_chng_time = current_date , user_id = id_of_user
		where project_id = (select pm.project.project_id from pm.project where project_name = name_of_project);
$$ language sql

create procedure pm.new_team_member (id_of_user int, id_of_team int) as $$
	update pm.users_team  
		set users_cnt = users_cnt + 1
		where cmd_id = id_of_team;
	update pm.user 
		set cmd_id = id_of_team
		where user_id = id_of_user;
$$ language sql

create function check_correct_deadline() returns trigger 
as $$ begin
	if (new.deadline_date <= current_date) then raise exception 'Неккорекный ввод даты дедлайна проекта'
	end if
	return new
end
$$ language plpgsql;

create function check_correct_status() returns trigger 
as $$ begin
	if (new.project_status not in (0, 1, 2, 3, 4)) then raise exception 'Некоректный ввод/обновление статуса проекта'
	end if
	return new
end 
$$ language plpgsql;
