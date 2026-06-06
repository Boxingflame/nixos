{ config, pkgs-unstable, ... }:

{
  services = {
     ollama = {
      enable = false;
      rocmOverrideGfx = "10.3.0";
      # environmentVariables = {
      #   OLLAMA_DEBUG = "1";
      # };
      loadModels = [ 
        "llama3.1:8b"
        "llama3.2:3b"
        "deepseek-r1:8b"
        "gpt-oss:20b"
      ];
      package = pkgs-unstable.ollama-rocm;
    };
    
    open-webui.enable = true;
  };
}