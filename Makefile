start:
	git pull
	mkdocs serve & jupyter lab

lab:
	jupyter lab	

serve:
	mkdocs serve

publish:
	mkdocs gh-deploy --config-file ./mkdocs.yml --clean --verbose

change:
	git commit -am "change made."
	git push

SOURCE := docs
IPYNB_FILES := $(wildcard $(SOURCE)/**/*.ipynb)
IPYNB_OUT := $(wildcard $(SOURCE)/**/*.md)
convert: $(IPYNB_OUT)
	@for f in $(IPYNB_FILES); do jupyter nbconvert --to markdown --no-input $${f}; done
	# jupyter nbconvert --to markdown --no-input .ipynb 
