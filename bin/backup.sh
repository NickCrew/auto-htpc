#!/usr/bin/env bash



here=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
backup_src=$(dirname $here)
ts=$(date +"%Y%m%d-%H%M")
backup_dest="$HOME/htpc-${ts}.tar.gz"

echo "Pausing containers"
docker-compose --project-directory="${backup_src}" pause
if [[ "$?" != "0" ]]; then
	echo "Failed to pause containers"; exit 1;
fi

tar cvzf "${backup_dest}" --directory "${backup_src}"
echo "Created backup archive: ${backup_dest}"

echo "Unpausing containers."
docker-compose --project-directory="${backup_src}" unpause

