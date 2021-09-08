.PHONY: default bundle

default:
	grfcodec -e extra_station_names_sample.grf .

bundle: default
	mkdir -p extra_station_names
	cp extra_station_names_sample.grf extra_station_names
	cp README.md extra_station_names/readme.txt
	cp LICENSE extra_station_names/license.txt
	cp changelog.md extra_station_names/changelog.txt
	tar cvf extra_station_names.tar extra_station_names
