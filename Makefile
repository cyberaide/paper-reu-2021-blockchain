all:
	mkdir -p arxiv/images
	cp paper-blockchain.tex arxiv
	cp abstract.tex arxiv
	cp content.tex arxiv
	cp all.bib arxiv
	cp images/EOS-USD-price.pdf arxiv/images
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
	rm -f arxiv.tar.gz 
	cd arxiv; tar cvfz ../arxiv.tar.gz * 
