# Video-Visual-Conversational-Assistant
A prototype of interactive visual conversational assistant agent using open-source frameworks

LLava: https://github.com/haotian-liu/LLaVA#Demo
Real-time audio processing and response generation with LLM repo https://github.com/vocodedev/vocode-python
Incontext examples template https://github.com/web-arena-x/webarena/blob/main/agent/prompts/prompt_constructor.py#L184

We plan to build a real-time audio-visual assistant with the following modules:
1. Real-time video descriptor that helps describe the objects in the scene 
2. Real-time speech-to-text module with audio-end point detection (we will be borrowing code from here https://github.com/vocodedev/vocode-python)
3. We will be using an off-the-shelf LLM with a prompt template with in-context examples similar to https://github.com/web-arena-x/webarena/blob/main/agent/prompts/prompt_constructor.py#L184 to generate a response
4. We will be using off-the shelf TTS to render speech back   

Version 1:
1. Answers questions about the objects in the scene in real-time based on LLM's parametric memory

Version 2:
1. Answers questions about the objects in the scene in real-time based on LLM's parametric memory and vectorDB

Version 3: 
Can perform actions on your behalf , add items into cart/use a browser application 




