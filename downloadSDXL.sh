cd /workspace/
# Check if the folder 'auto-models' exists
if [ -d "auto-models" ]; then
  echo "Folder 'auto-models' exists."

  # Download the files into the 'auto-models' folder with the specified names
  wget -O auto-models/SDXL_FP16_VAE.safetensors https://huggingface.co/madebyollin/sdxl-vae-fp16-fix/resolve/main/sdxl_vae.safetensors
  wget -O auto-models/Realistic_Vision_V5.1.safetensors https://huggingface.co/SG161222/Realistic_Vision_V5.1_noVAE/resolve/main/Realistic_Vision_V5.1.safetensors
  wget -O auto-models/vae-ft-mse-840000-ema-pruned.ckpt https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.ckpt
  wget -O auto-models/SDXL_FP32_VAE.safetensors https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors

  if [ $? -eq 0 ]; then
    echo "Files downloaded successfully."
  else
    echo "Failed to download the files."
  fi
else
  echo "Folder 'auto-models' does not exist."

  # Download the files into the 'auto-models' folder with the specified names
  wget -O /workspace/stable-diffusion-webui/models/VAE/SDXL_FP16_VAE.safetensors https://huggingface.co/madebyollin/sdxl-vae-fp16-fix/resolve/main/sdxl_vae.safetensors
  wget -O /workspace/stable-diffusion-webui/models/Stable-diffusion/Realistic_Vision_V5.1.safetensors https://huggingface.co/SG161222/Realistic_Vision_V5.1_noVAE/resolve/main/Realistic_Vision_V5.1.safetensors
  wget -O /workspace/stable-diffusion-webui/models/VAE/vae-ft-mse-840000-ema-pruned.ckpt https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.ckpt
  wget -O /workspace/stable-diffusion-webui/models/VAE/SDXL_FP32_VAE.safetensors https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors

  if [ $? -eq 0 ]; then
    echo "Files downloaded successfully."
  else
    echo "Failed to download the files."
  fi
fi