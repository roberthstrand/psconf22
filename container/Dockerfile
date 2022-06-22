FROM mcr.microsoft.com/azure-powershell:8.0.0-alpine-3.13

COPY script.ps1 script.ps1
RUN chmod +x script.ps1
CMD [ "pwsh", "-File", "script.ps1" ]