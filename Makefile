all: serve

check:
	bundle exec jekyll build -s . -d _site/
	bundle exec htmlproofer ./_site/ \
		--ignore-files "/reveal.js/" \
		--no-enforce-https --no-disable-external \
		--only-4xx --ignore-empty-alt --ignore-missing-alt # --check-favicon

serve:
	bundle exec jekyll serve -s . -d _site/

clean:
	cd _site && git checkout -- .

build: build-vincent

build-vincent: clean
	bundle exec jekyll build -s . -d _site/

build-keybase: clean
	bundle exec jekyll build -s . -d _site/ -b ""

push: push-vincent

push-vincent: build-vincent
	cd _site && git add . && git commit -m "`date`" && git push

# mahrud.keybase.pub
push-keybase: build-keybase
	scp -r _site/* /keybase/public/mahrud/

install:
	gem install jekyll
	gem install bundler
	bundle config set path 'vendor/bundle'
	bundle install

install-remote:
	git clone mahrud@login01.cselabs.umn.edu:www/.git _site
