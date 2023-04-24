docker run -p 7860:7860 --privileged --gpus all -t \
	-v `pwd`/content/stable-diffusion-webui/embeddings:/content/stable-diffusion-webui/embeddings \
	-v `pwd`/content/stable-diffusion-webui/interrogate:/content/stable-diffusion-webui/interrogate \
	-v `pwd`/content/stable-diffusion-webui/outputs:/content/stable-diffusion-webui/outputs \
	-v `pwd`/content/stable-diffusion-webui/models:/content/stable-diffusion-webui/models \
	-v `pwd`/content/stable-diffusion-webui/log:/content/stable-diffusion-webui/log \
	-v `pwd`/content/stable-diffusion-webui/extensions:/content/stable-diffusion-webui/extensions \
	--rm --name testsd 028fa6264535 bash -c "cd content/stable-diffusion-webui && COMMANDLINE_ARGS=\"--share --disable-safe-unpickle --no-half-vae --xformers --reinstall-xformers --enable-insecure-extension- --gradio-queue --remotemoe --listen\" REQS_FILE=\"requirements.txt\" python launch.py"
