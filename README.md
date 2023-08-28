# Robot Framework com ApplicationLibrary.DesktopLibrary

- [Robot Framework](https://robotframework.org/)
- [Github ApplicationLibrary.DesktopLibrary](https://github.com/Accruent/robotframework-applicationlibrary)

## Pré-requisitos:

- python 3 (adicionado no path)
- pip install robotframework
- pip install robotframework-applicationlibrary

## Dicas

Pegar id lógico da aplicação no windows

No powershell:
`get-StartApps | Where-Object {$_.Name -like '*Application Name*'}`

### Ferramenta para verificar ids

- Accessibility Insights For Windows

# Como rodar 

Rodar testes:
`robot arquivo.robot`

Rodar testes e direcionar arq de logs:
`robot -d ./logs`