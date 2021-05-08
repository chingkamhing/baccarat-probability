.PHONY: help
help:
	@echo "    install          Install required programs and libraries"
	@echo "    html             Export jupyter notebook to html"
	@echo "    pdf              Export jupyter notebook to pdf"

# install required programs and libraries
.PHONY: install
install:
	sudo apt install python3-pip inkscape pandoc texlive-xetex texlive-fonts-recommended 
	pip3 install pylint numpy matplotlib pandas jupyter jupyterlab
	pip3 install --upgrade Pygments

# export jupyter notebook to html
.PHONY: html
html:
	jupyter nbconvert --to HTML baccarat-probability.ipynb

# export jupyter notebook to pdf
.PHONY: pdf
pdf:
	jupyter nbconvert --to PDF baccarat-probability.ipynb
