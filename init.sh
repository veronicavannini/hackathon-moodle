export MOODLE_DOCKER_WWWROOT=./moodle
export MOODLE_DOCKER_DB=pgsql
git clone -b MOODLE_403_STABLE git://git.moodle.org/moodle.git $MOODLE_DOCKER_WWWROOT
cp config.docker-template.php $MOODLE_DOCKER_WWWROOT/config.php
bin/moodle-docker-compose up -d
bin/moodle-docker-wait-for-db
# bin/moodle-docker-compose down
