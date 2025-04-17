Revision history
==================================



v2.15.0 (2025-04-17)
----------------------------------

* Redirect stderr to dev/null when opening url in browser.



v2.14.0 (2025-01-04)
----------------------------------

* Use `-it` when executin docker to get interactive console.



v2.13.0 (2024-10-04)
----------------------------------

* Prefer `docker compose` before `docker-compose`.



v2.12.0 (2023-09-06)
----------------------------------

* Improve support for WSL.



v2.11.0 (2023-09-01)
----------------------------------

* Remove dependency to realpath since Mac Venture included a bad one.



v2.10.2 (2022-04-21)
v2.10.1 (2022-04-21)
----------------------------------

* Enable to download only parts of me to increase speed.



v2.9.0 (2022-04-21)
----------------------------------

* Enable pre_download as helpful when it takes time to download.



v2.8.8 (2022-03-25)
----------------------------------

* Remove dbwebb validate in background for tentamen.



v2.8.7 (2022-03-25)
----------------------------------

* Fix bug output of feedback text when grading tentamen.



v2.8.6 (2022-03-25)
----------------------------------

* Fix output of feedback text when grading tentamen.



v2.8.5 (2022-01-20)
----------------------------------

* Add header to the docker log.



v2.8.4 (2021-05-18)
----------------------------------

* Remove headline for test status.



v2.8.3 (2021-05-07)
----------------------------------

* Fix to support github ssh urls that lacks .git extension.



v2.8.2 (2021-04-16)
----------------------------------

* Do export NO_DBWEBB_INSPECT=1 in the config.bash to avoid doing a dbwebb inspect.



v2.8.1 (2021-04-13)
----------------------------------

* Fix default path to chrome.exe on cygwin.



v2.8.0 (2021-04-09)
----------------------------------

* The log from the docker run is attached to the course feedback, once docker is completed.



v2.7.2 (2021-03-25)
----------------------------------

* Print out which dir used when rsync the exam.



v2.7.0 (2021-02-23)
----------------------------------

* Use docker-compose run instead of make docker-run when executin dbwebb inspect.
* Add --rm when running docker-compose run.



v2.6.0 (2021-02-23)
----------------------------------

* Docker container should be removed, now using --rm.



v2.5.1 (2020-10-30)
----------------------------------

* Check if docker log exists before reading it.



v2.5.0 (2020-10-30)
----------------------------------

* Enable to write log file from docker tests.



v2.4.1 (2020-10-29)
----------------------------------

* Fix checking directory for ignore running docker when scripts are missing.



v2.4.0 (2020-10-29)
----------------------------------

* Include functions hasGitTagBetween and getSemanticVersion to be able to use outside of docker.
* Include functions openUrl and openSpecificUrl.
* Ignore running docker when scripts are missing.



v2.3.10 (2020-10-28)
v2.3.9 (2020-10-28)
----------------------------------

* Be a bit more resilient when rsyncing exam to me/tentamen.



v2.3.8 (2020-10-08)
----------------------------------

* Add correct version.



v2.3.7 (2020-10-07)
----------------------------------

* Update how browsers startup on macOs. Fix #3.



v2.3.6 (2020-08-26)
----------------------------------

* Make output more compact by removing some newlines



v2.3.5 (2020-03-31)
----------------------------------

* Add text/all.txt to output as one place for troubleshooting and common messages.



v2.3.3 (2020-03-27)
----------------------------------

* Avoid output of feedback text into main.



v2.3.1 (2020-03-27)
----------------------------------

* Enable makeDockerValidate for the database exam.



v2.3.0 (2020-03-27)
----------------------------------

* Include database exam specifics from database course.



v2.2.2 (2020-03-09)
----------------------------------

* Fix input message for potate.



v2.2.1 (2020-03-09)
----------------------------------

* Add command for 'config' to check or setup the configuration file.



v2.1.0 (2020-02-11)
----------------------------------

* Show version when adding extra arguments.
* Allow to be installed as part of 'dbwebb gui' command.



v1.5.0 (2019-10-25)
----------------------------------

* Merge functions.bash into gui.bash.



v1.4.4 (2019-10-22)
----------------------------------

* Lastest version before merging gui.bash to one. Using htmlphp gui.bash as base.
*
