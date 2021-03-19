# python -m pip install --upgrade "google-assistant-sdk[samples]"
pip install --upgrade "google-auth-oauthlib[tool]"
pip install --upgrade "google-assistant-library"

google-oauthlib-tool --scope https://www.googleapis.com/auth/assistant-sdk-prototype \
    --save --headless --client-secrets ./key.json

# googlesamples-assistant-pushtotalk \
#     --project-id future-silicon-285600 \
#     --device-model-id future-silicon-285600-laptop
