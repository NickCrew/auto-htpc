#!/usr/bin/fish


set PROFILES "nzb" "bt" "metrics" "requests" "admin" "opt" "subs"

set DC_ARGS

for PROFILE in $PROFILES
	set DC_ARGS $DC_ARGS "--profile $PROFILE"
end

docker compose $DC_ARGS $argv

