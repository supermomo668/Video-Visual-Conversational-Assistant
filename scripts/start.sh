python -m llava.serve.controller --host 0.0.0.0 --port 10000
python -m llava.serve.model_worker --host 0.0.0.0 --controller http://localhost:10000 --port 40000 --worker http://localhost:40000 --model-path liuhaotian/llava-llama-2-13b-chat-lightning-preview --load-4bit
# start web_server
python -m llava.serve.gradio_web_server --controller http://localhost:10000 --model-list-mode reload