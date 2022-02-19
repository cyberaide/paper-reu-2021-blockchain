all:
	make -f Makefile copy
	make -f Makefile latex
	make -f Makefile clean
	make -f Makefile archive

clean:
	rm -f arxiv/*.aux
	rm -f arxiv/*.log
	rm -f arxiv/*.out
	rm -f arxiv/*.blg
	rm -f arxiv/paper-blockchain.pdf


latex: 
	cd arxiv; pdflatex paper-blockchain
	cd arxiv; bibtex paper-blockchain
	cd arxiv; pdflatex paper-blockchain
	cd arxiv; pdflatex paper-blockchain

copy:
	rm -rf arxiv
	mkdir -p arxiv/images
	cp paper-blockchain.tex arxiv
	cp abstract.tex arxiv
	cp content.tex arxiv
	cp *.bib arxiv
	#cp images/EOS-USD-price.pdf arxiv/images
	cp images/EOS-USD-price.png arxiv/images
	cp images/eos-usd.png arxiv/images
	cp images/architecture-process.png arxiv/images
	cp images/lstm.png arxiv/images
	cp images/EOS-USD-prediction-model.pdf arxiv/images
	cp images/EOS-USD-prediction-model-zoomed.pdf arxiv/images
	cp images/EOS-USD-training-loss.pdf arxiv/images
	cp images/EOS-USD-epoch-5.pdf arxiv/images
	cp images/EOS-USD-epoch-25.pdf arxiv/images
	cp images/EOS-USD-epoch-50.pdf arxiv/images
	cp images/EOS-USD-epoch-100.pdf arxiv/images
	cp images/doge-usd.png arxiv/images
	cp images/DOGE-USD-prediction-model.pdf arxiv/images
	cp images/DOGE-USD-prediction-model-zoomed.pdf arxiv/images
	cp images/eth-usd.png arxiv/images
	cp images/ETH-USD-prediction-model.pdf arxiv/images
	cp images/ETH-USD-prediction-model-zoomed.pdf arxiv/images
	cp images/btc-usd.png arxiv/images
	cp images/BTC-USD-prediction-model.pdf arxiv/images
	cp images/BTC-USD-prediction-model-zoomed.pdf arxiv/images

archive:
	rm -f arxiv.tar.gz 
	cd arxiv; tar cvfz ../arxiv.tar.gz *
	@echo "==================================="
	tar tvf arxiv.tar.gz
	@echo "==================================="

