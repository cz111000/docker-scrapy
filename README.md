# Scrapy
An open source and collaborative framework for extracting the data you need from websites.
In a fast, simple, yet extensible way.

See [scrapy][scrapy-home] official page and the official [documentation][scrapy-docs] for more details.

![Docker Image CI](https://github.com/cz111000/docker-scrapy/workflows/Docker%20Image%20CI/badge.svg?branch=python2)
![Python 2.x](https://img.shields.io/badge/Python-2.x-blue.svg?style=flat&logo=python)

# Usage
For a list of [scrapy][scrapy-home] commands, simply run:
```
$ docker run -v $(pwd):/runtime/app aciobanu/scrapy
```
Since the container doesn't provide any persistence, we can use the `volumes` (-v) directive to share the current folder with the container.

To start a new project
```
$ docker run -v $(pwd):/runtime/app aciobanu/scrapy startproject tutorial
```
This will create a new `tutorial` folder in your current path.

To work on the [scrapy][scrapy-home] project:
```
$ cd tutorial
$ docker run -v $(pwd):/runtime/app aciobanu/scrapy
```
Continue reading the official [tutorial][scrapy-tutorial] for a more in depth usage manual of [scrapy][scrapy-home]. For more details about [Docker][docker-home] and usage options, please see the official [documentation][docker-docs] page.


[scrapy-home]: http://scrapy.org/
[scrapy-docs]: http://doc.scrapy.org/en/latest/
[scrapy-tutorial]: http://doc.scrapy.org/en/latest/intro/tutorial.html
[docker-home]: https://www.docker.com/
[docker-docs]: https://docs.docker.com/
