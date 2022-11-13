test-broken:
	-rm -rf docs/*
	quarto render .
	cat docs/index.html
test-works:
	echo "Hiding LICENSE.md"
	mv LICENSE.md .License_hidden
	-rm -rf docs/*
	quarto render .
	cat docs/index.html
	mv .license_hidden LICENSE.md
