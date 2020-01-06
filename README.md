# erin.clerico.com
Hugo managed website for Erin Clerico
<ul>
<li>
aws key placed into ~/.aws/credentials
</li>
<li>docker run --rm -it -v $PWD:/src -u hugo clerico-hugo-aws hugo deploy</li>
<li>docker run --rm -it -v $PWD:/src -p 1313:1313 -u hugo clerico-hugo-aws:5 hugo server -w --bind=0.0.0.0</li>
<li>docker run --rm -it -v $PWD:/src -p 1313:1313 clerico-hugo-aws:6 ./bin/thumbs.sh mountains</li>
<li>docker run --rm -it -v $PWD:/src -u hugo clerico-hugo-aws:5 hugo -D</li>
<li>docker run --rm -it -v $PWD:/src -u hugo clerico-hugo-aws:5 hugo deploy -e production</li>
