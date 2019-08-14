#!/bin/sh

set -e

# Convert the HTML source into epub and Mobipocket formats
# using the ebook-convert utility from https://calibre-ebook.com/.

ebook-convert apology.html other-formats/apology.mobi \
	      --language=en \
	      --cover="cover.png" \
	      --level1-toc='//h:div[@class="chaptertitle"]'

ebook-convert apology.html other-formats/apology.epub \
	      --language=en \
	      --cover="cover.png" \
	      --level1-toc='//h:div[@class="chaptertitle"]'
