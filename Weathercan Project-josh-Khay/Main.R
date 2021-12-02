d.station <- stations()

d.van <- weather_dl(station_ids = 889, start = "2013-01-01", end = "2013-12-31")
d.van.normals <- normals_dl("1108447")
