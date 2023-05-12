insert into pm.project (project_id, project_name, project_priority, project_status)
values
	(0, '"Квантория"', 5, 0),
	(1, '"Цифровой переворот"', 4, 0),
	(2, '"Интеллектуальный прорыв"', 2, 1),
	(3, '"Оптимизация техпроцессов"', 9, 3),
	(4, '"Платформа инноваций"', 1, 1),
	(5, '"Кибербезопасность+"', 0, 2),
	(6, '"Интегральные решения"', 6, 1),
	(7, '"Приложения будущего"', 7, 0),
	(8, '"Автоматизированные системы"', 8, 2),
	(9, '"Нейронные сети для анализа данных"', 3, 0)
	
insert into pm.users_team (cmd_id, cmd_name, project_id, team_lid, users_cnt) values 
	(0, 'ПКЛПО', 9, 'Екатерина Иванова', 3),
	(1, null, 3, 'Александр Федоров', 2)
	
insert into pm.user (user_id, user_name, cmd_id) values
	(0, 'Андрей Беляков', null),
	(1, 'Екатерина Иванова', 0),
	(2, 'Владимир Смирнов', 0),
	(3, 'Ольга Ковалева', 0),
	(4, 'Денис Петров', null),
	(5, 'Марина Сергеева', null),
	(6, 'Игорь Морозов', 1),
	(7, 'Татьяна Павлова', null),
	(8, 'Александр Федоров', 1),
	(9, 'Наталья Шестакова', null)
	
insert into pm.project_user (user_id, project_id) values
	(0, 2),
	(1, 9),
	(2, 9),
	(3, 9),
	(4, 4),
	(5, 1),
	(6, 3),
	(7, 3),
	(8, 3),
	(9, 4)
	
insert into pm.project_materials (project_id, project_disc, project_doc) values
	(0, 'https://jija.com/project0', 'https://docs.google.com/project0'),
	(1, 'https://jija.com/project0', 'https://docs.google.com/project1'),
	(2, 'https://jija.com/project2', 'https://docs.google.com/project2'),
	(3, 'https://jija.com/project3', 'https://docs.google.com/project3'),
	(4, 'https://jija.com/project4', 'https://docs.google.com/project4'),
	(5, 'https://jija.com/project5', 'https://docs.google.com/project5'),
	(6, 'https://jija.com/project6', 'https://docs.google.com/project6'),
	(7, 'https://jija.com/project7', 'https://docs.google.com/project7'),
	(8, 'https://jija.com/project8', 'https://docs.google.com/project8'),
	(9, 'https://jija.com/project9', 'https://docs.google.com/project9')
	
insert into pm.project_changes (project_id, user_id, last_chng_time) values
	(0, 2, '2023-01-01'),
	(1, 5, '2023-02-01'),
	(2, 0, '2023-01-11'),
	(3, 7, '2023-03-03'),
	(4, 9, '2022-11-01'),
	(5, 5, '2023-01-23'),
	(6, 5, '2023-02-28'),
	(7, 4, '2023-04-03'),
	(8, 1, '2023-04-11'),
	(9, 3, '2023-05-24')
	
insert into pm.project_deadlines (project_id, start_date, deadline_date) values
	(0, '2022-01-01', '2024-01-01'),
	(2, '2022-02-01', null),
	(3, '2022-03-01', null),
	(4, '2022-04-01', null),
	(5, '2022-05-01', '2023-12-01'),
	(6, '2022-06-01', '2024-12-01'),
	(7, '2022-07-01', '2024-04-01'),
	(8, '2022-08-01', '2024-06-06'),
	(9, '2022-09-01', '2023-07-01')
	
insert into pm.used_systems (project_id, main_language, add_language, add_systems) 
values
	(0, 'C#', 'C++', 'Azure'),
	(1, 'C++', null, 'GitLab'),
	(2, 'C++', null, null),
	(3, 'Python', null, null),
	(4, 'GO', 'Pyhon', null),
	(5, 'Rock', 'C++', 'Aboba'),
	(6, 'Ruby', 'Java', 'GitLab'),
	(7, 'C++', 'C#', 'Azure'),
	(8, 'C#', null, 'GitLab'),
	(9, 'C#', null, null)

