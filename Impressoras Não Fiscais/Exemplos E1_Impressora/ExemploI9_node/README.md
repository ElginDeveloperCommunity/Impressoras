# Exemplo Impressora Térmica não Fiscal em Node js

Acesse a documentação das funções disponíveis na biblioteca [aqui](https://elgindevelopercommunity.github.io/group___m1.html).

## Exemplo Node Js
Para poder carregar e chamar as funções dentro da biblioteca dll usamos o módulo do node `node-ffi-napi`. Para instalar:
```
$ npm install ffi-napi
```
e importar no seu código:
https://github.com/ElginDeveloperCommunity/Impressoras/blob/89377b924f331362e4935f9d0376b569d1bc270c/Impressoras%20N%C3%A3o%20Fiscais/Elgin/i9/Exemplos/ExemploI9_node/exemplo_impressora.js#L2

Para carregar as funções da dll crie um objeto `ffi.Library` e nos parâmetros você irá informar o nome da lib, o nome das funções e os tipos de dados dos argumentos e retornos das funções.

https://github.com/ElginDeveloperCommunity/Impressoras/blob/89377b924f331362e4935f9d0376b569d1bc270c/Impressoras%20N%C3%A3o%20Fiscais/Elgin/i9/Exemplos/ExemploI9_node/exemplo_impressora.js#L4-L17

Agora é só chamar as funções do objeto criado no seu código!

https://github.com/ElginDeveloperCommunity/Impressoras/blob/89377b924f331362e4935f9d0376b569d1bc270c/Impressoras%20N%C3%A3o%20Fiscais/Elgin/i9/Exemplos/ExemploI9_node/exemplo_impressora.js#L19-L29
