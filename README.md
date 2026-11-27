# Memórias da Viagem — Phaser / TypeScript

Versão 1.0.0 | Port da versão Godot 3.1.

## Executar no Windows

1. Instale [Node.js LTS](https://nodejs.org/en/download) e [Visual Studio Code](https://code.visualstudio.com/download). Node 22 ou superior recomendado.
2. Extraia o ZIP inteiro. Abra a pasta `Memorias_da_Viagem_Phaser_v1` no VS Code (Arquivo > Abrir Pasta).
3. Abra Terminal > Novo Terminal. Use o perfil **Command Prompt / Prompt de Comando** (menu ao lado do botão +), ou use `npm.cmd` caso o PowerShell bloqueie scripts.
4. Rode `npm install` uma vez, com internet. Aguarde o término.
5. Rode `npm run dev` e abra a URL que o terminal exibir (normalmente http://127.0.0.1:5173). Não abra index.html por duplo clique. Mantenha o terminal aberto; Ctrl+C para parar.

Alternativa: execute `JOGAR.bat` na pasta extraída. Ele instala as dependências caso necessário e inicia o servidor. Abra o endereço exibido.

## Build web e itch.io

`npm run build` verifica os tipos e prepara `dist/`. `npm run preview` serve essa pasta localmente. Para o itch.io, compacte **o conteúdo** de `dist/`, com `index.html` na raiz do ZIP, escolha projeto HTML e marque que o arquivo roda no navegador. O Vite usa caminhos relativos para hospedar em subpastas.

## Estrutura

- `src/main.ts`: cena Phaser, carregamento de texturas e áudio, fundo e ilustrações no canvas, animação de entrada, coordenação da interface e persistência.
- `src/rules.ts`: regras puras em TypeScript, sorteio de perguntas, avaliador e memória probabilística da máquina. Sem serviço externo de IA.
- `src/dados.json`: conteúdo original intacto (30 cartas, 6 capítulos, 3 versões por carta).
- `src/style.css`: interface responsiva HTML/CSS, com entrada nativa para respostas e teclado móvel.
- `public/assets/`: ilustrações e efeitos sonoros originais.
- `tests/rules.test.ts`: testes automatizados, execute `npm test` com Node 22+.

## Port e diferenças

Fluxo preservado: leitura das 30 cartas, sorteio de variantes, cinco perguntas de capítulos distintos e dificuldades 1/2/2/3/2, desempate apenas quando necessário, correção de texto, placar, revisão, dificuldade adaptativa, retomada local, navegação por toque e setas. Interface reconstruída em layout híbrido Phaser/HTML para manter o teclado nativo e a rolagem. Efeitos visuais foram recriados em versão simplificada; ainda não há paridade visual exata com a Godot. Preferências e partida usam localStorage, não importam saves Godot. Dependências precisam ser instaladas no computador do usuário; não incluímos node_modules ou build pré-compilado.

## Validação

Testes das regras executados com Node 22.16.0: 5/5 passaram. Inclui 1.000 sorteios e validação dos gabaritos de todas as 90 variantes. A instalação de dependências e a execução gráfica não puderam ser feitas no ambiente de conversão (sem acesso ao registro npm); o primeiro `npm install`, `npm run build` e teste no navegador são necessários para validar a integração Phaser/Vite. Não é uma publicação pronta nem uma garantia de compatibilidade em todos os celulares.
