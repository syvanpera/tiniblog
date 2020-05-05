#!/bin/bash
hugo -e production
scp -r public/* tuomo@blog.tinimini.fi:~/docker/config/www/blog
