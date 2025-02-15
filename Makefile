.PHONY: start stop download

download:
	wget -P ./models https://huggingface.co/suno/bark/resolve/main/text_2.pt

start:
	python3 -m venv env
	. env/bin/activate
	pip install -r requirements.text
	uvicorn main:app --reload
	

