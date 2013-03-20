all:	clean pdf

pdf: 
	latex barcelo_resume.tex
	#latex barcelo_letter.tex
	#dvipdfm barcelo_resume_uc3m.dvi
	dvips -o barcelo_resume.ps -Ppdf -G0 -t a4 barcelo_resume.dvi
	#dvips -o barcelo_letter.ps -Ppdf -G0 -t a4 barcelo_letter.dvi
	ps2pdf -sPAPERSIZE=a4 -dEmbedAllFonts=true barcelo_resume.ps
	#ps2pdf -sPAPERSIZE=a4 -dEmbedAllFonts=true barcelo_letter.ps
	evince barcelo_resume.pdf
	#evince barcelo_letter.pdf
					
clean:
	rm -f barcelo_resume.aux barcelo_resume.log barcelo_resume.blg barcelo_resume.bbl barcelo_resume.out barcelo_resume.dvi barcelo_resume.ps barcelo_resume.pdf

