# Automatic Home Theatre PC
 (Almost) everything you need for a fully-automated, locally-controlled home theater system. 

## Features

- Request Management 
	- Web-based discovery portal
	- IMDB Integration
	- Trakt.tv List Integration
- Download clients with support for multiple protocols:
	- Usenet 
	- Bittorrent (includes automatic OpenVPN integration)
	- RSS
	- Synology Download Station
- Library management:
    - TV Shows
	- Movies
	- Music
	- eBooks
	- Subtitles

    
### Example Workflow
The following routine can usually be accomplished,
with zero human intervention after step 1, in about
15 to 30 minutes*.

1. User requests a title suggested by personalized
recommendations in the request portal

2. The library manager receives the request and 
marks all parts of the tile as 'wanted', then begins
searching using your choice of indexers (bitorrent or usenet).

3. When an eligible candidate is found, the download client
is sent the request to fetch the title. 

4. The library inventory is updated 
and renames the file(s) to a standard convention
easily understood by Plex.

5. Plex scans the library file system and makes the
title available in one of its libraries. 
Art, trailers, subtitles, and other metadata are 
downloaded.

> Note: *Depending how fast and uncongested your internet connection is

## Usage

### Profiles

The following Docker Compose profiles are available:

- default     (prowlarr, sonarr, radarr)
- nzb         (sabnzbd)
- bt          (qbittorrent)
- music       (lidarr)
- books       (readarr)
- subs        (bazarr)
- metrics     (tautulli)
- requests*   (overseer)
- admin       (portainer)
- dashboard   (organizr)
- opt         (extra functionality)

> Note: Petio is my personal recommendation for a request portal 
> but we do not install it as a docker service here. Overseerr is a populat choice as well. 


### Configuration

Use the *.env files as needed to customize the environment. The '.env' file, where it is a hidden-filed named 'env', is 
explicitly ignored from this repo. It applies to Docker compose itself, NOT the container instances themselves. 


### Integration Notes

- This system works best with [Plex](https://plex.tv).  
- [Pushover](https://pushover.net) is recommended for fine-tuned control over notifications  
- NGinx Reverse proxy configuration examples are included for all services



