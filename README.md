# Game GoM - Game of Mermãs

![Game GoM Logo](https://user-images.githubusercontent.com/43351859/193393497-5b05d600-12b1-4bfb-9bce-ce0350d1f7f2.png)

Jogo de plataforma 2D desenvolvido para a Oficina "Aprendendo Atraves de Jogos" do projeto Mermas Digitais 2022.

## Sobre o Jogo

GoM e um platformer side-scrolling onde voce controla uma pequena maga atravessando fases com inimigos, obstaculos e coletaveis. O objetivo e coletar frutas, derrotar inimigos e chegar ao trofeu no final da fase.

### Recursos

- **5 tipos de inimigos**: Slime, Bat, Bunny, Pig e Chicken - cada um com comportamento unico
- **Ataque magico**: Combo de 3 hits com cajado + projetil magico
- **Pulo duplo**: Dois pulos consecutivos para alcançar plataformas altas
- **Trampolim**: Plataformas de impulso para areas elevadas
- **Controles multiplos**: Teclado, gamepad/joystick e touch (mobile)
- **Overlay de controles**: Explicacao dos controles ao iniciar a fase
- **Menu de pausa**: Acessivel pelo botao Start ou ESC
- **Tela de vitoria**: Mostra tempo e frutas coletadas ao completar a fase

### Controles

| Acao | Teclado | Gamepad | Touch |
|------|---------|---------|-------|
| Mover | A/D ou Setas | D-Pad / Analogico | Botoes na tela |
| Pular | W / Seta Cima / Espaco | A | Botao na tela |
| Atacar | J ou K | X ou Y | Botao na tela |
| Pausar | ESC | Start | - |

## Tecnologias

- **Godot Engine 3.6.3** (GLES2)
- **GDScript**
- **Resolucao base**: 320x192 (escala automaticamente para qualquer tela)

## Download

Baixe a versao mais recente na pagina de [Releases](https://github.com/mermas-digitais/mermas-game-platform/releases):

- **Windows**: `GoM_Windows.exe` + `GoM_Windows.pck` (ambos na mesma pasta)
- **macOS**: `GoM.zip` (descompacte e abra o .app - botao direito > Abrir na primeira vez)

## Como Rodar o Projeto

1. Instale o [Godot 3.6.3](https://godotengine.org/download/3.x/)
2. Clone o repositorio:
   ```sh
   git clone https://github.com/mermas-digitais/mermas-game-platform.git
   ```
3. Abra o `project.godot` no Godot Editor
4. Pressione F5 para rodar

## Licenca

Este projeto e coberto pela Licenca MIT.
