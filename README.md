# Video-Visual-Conversational-Assistant
A prototype of interactive visual conversational assistant agent using open-source frameworks

### Objective & Use-case
Audio and visual inputs are considered the 2 main primary modalities of human that are oftened leveraged to produce a response. We're hacking a prototype using foundatioanal frameworks for context-specific agent that may or may not require a prompt to elucidate a response, much like an actual assistant.

## Module Index
* [Visual](visual/README.md)

## Open-source Repos
* General:
    * [qLoRa](https://github.com/artidoro/qlora)
* Speech:
    * [NeMo](https://github.com/NVIDIA/NeMo)
* Multi:
    * [LLava](https://github.com/haotian-liu/LLaVA#Demo)
        <br>[Real-time audio processing and response generation with LLM repo](https://github.com/vocodedev/vocode-python)
        <br>[Incontext examples template](https://github.com/web-arena-x/webarena/blob/main/agent/prompts/prompt_constructor.py#L184)

We plan to build a real-time audio-visual assistant with the following modules:
1. Real-time video descriptor that helps describe the objects in the scene 
2. Real-time speech-to-text module with audio-end point detection (we will be borrowing code from here https://github.com/vocodedev/vocode-python)
3. We will be using an off-the-shelf LLM with a prompt template with in-context examples similar to https://github.com/web-arena-x/webarena/blob/main/agent/prompts/prompt_constructor.py#L184 to generate a response
4. We will be using off-the shelf TTS to render speech back   

<b> Scenario</b>

Versions:

    1. questions about the objects in the scene in real-time based on LLM's parametric memory
    2. Answers questions about the objects in the scene in real-time based on LLM's parametric memory and vectorDB
    3. Can perform actions on your behalf , add items into cart/use a browser application 

### Dev Set-up
1. <b> [OpenSource frameworks resources GPT](https://osschat.io/chat?project=llama)

2. <b> Extracting Llama Generation Probabilities </b>
    To extract the generative probabilities of a certain response given a certain input when using Llama for inference, you can use the following code:
    ```
    import torch
    from llama.inference import LlamaInference

    # Load the fine-tuned Llama model
    model_path = "path/to/your/fine-tuned/model"
    model = torch.load(model_path)

    # Create an instance of LlamaInference
    inference = LlamaInference(model)
    ...
    # Get the generative probabilities
    probabilities = inference.get_generative_probabilities(input_text, response_text)
    ```
    For more information on Llama and its inference capabilities, you can refer to the official Llama GitHub repository: Llama GitHub
    
3. <b> NeMo Transcriptions
    ```
    import nemo
    import nemo_asr

    # Load the pre-trained ASR model
    asr_model = nemo_asr.models.EncDecCTCModel.from_pretrained(model_name='QuartzNet15x5Base-En')

    # Transcribe audio file
    audio_file = 'path/to/audio.wav'
    transcriptions = asr_model.transcribe([audio_file])

    # Print the transcriptions
    for transcription in transcriptions:
        print(transcription)
    ```

## Pinging the LLava worker 
```
headers = {"User-Agent": "LLaVA Client"} 
    pload = {
        "model": model_name,
        "prompt": prompt,
        "max_new_tokens": max_new_tokens,
        "temperature": 0.7,
        "stop": conv.sep,
        "images": images
    }
    response = requests.post(worker_addr + "/worker_generate_stream", headers=headers,
            json=pload, stream=True)
```
