all: push

check: build
	bundle exec htmlproofer ./_site/ --only-4xx --check-html --disable-external --empty-alt-ignore # --check-favicon

serve:
	bundle exec jekyll serve -s . -d _site/

clean:
	rm -rf ./_site/*

build: build-vincent

build-vincent: clean
	bundle exec jekyll build -s . -d _site/

build-keybase: clean
	bundle exec jekyll build -s . -d _site/ -b ""

push: push-vincent

push-vincent: build-vincent
	cd _site && git add . && git commit -m "`date`" && git push

push-keybase: build-keybase
	scp -r _site/* /keybase/public/mahrud/

install:
	gem install jekyll
	gem install bundler
	bundle config set path 'vendor/bundle'
	bundle install
