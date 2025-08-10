{ config, pkgs, ... }:

{
  services = {
     ollama = {
      enable = true;
      acceleration = "rocm";
      rocmOverrideGfx = "11.0.0";
      # environmentVariables = {
      #   OLLAMA_DEBUG = "1";
      # };
      loadModels = [ 
        "llama3.1:8b"
        "llama3.2:3b"
        "deepseek-r1:8b"
        "gpt-oss:20b"
      ];
    };
    
    open-webui.enable = true;
  };
}