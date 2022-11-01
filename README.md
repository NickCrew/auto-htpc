# Automatic Home Theatre PC

## Quick Start

````bash
docker-compose up -d
````

## Synopsis

Docker stack(s) to deploy a complete Home Theatre suite.  

### Features

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


#### External Integration Notes

- This system works best with [Plex](https://plex.tv).  
- [Pushover](https://pushover.net) is recommended for fine-tuned control over notifications  
- NGinx Reverse proxy configuration examples are included for all services



