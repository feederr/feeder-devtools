create schema authorization;
grant all privileges on authorization.* to 'feeder_authorization'@'%' identified by "testpwd";

create schema application;
grant all privileges on application.* to 'feeder_application'@'%' identified by "testpwd";

create schema statistics;
grant all privileges on statistics.* to 'feeder_statistics'@'%' identified by "testpwd";

flush privileges;

