#!bash
echo 'clean before build ...'
hexo clean
echo 'clean ok'
echo 'start build ...'
hexo g
echo 'build ok'
echo 'start deploy ...'
hexo d
echo 'deploy ok'
