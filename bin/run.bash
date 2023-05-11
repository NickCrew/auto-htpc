#!/usr/bin/env bash

if [ -z $HTPC_HOME ]; then project_dir=$(dirname $( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd ));
else project_dir=$HTPC_HOME; fi

if [ -z $HTPC_PROFILES ]; then profiles=(nzb bt metrics requests admin opt subs);
else profiles="${HTPC_PROFILES[@]}"; fi

p_args=("--project-directory" "${project_dir}");
for p in "${profiles[@]}"; do
	p_args=("${p_args[@]}" "--profile" $p);
done

docker-compose "${p_args[@]}" "$@"

