main_menu = ["Jogar","Configuracoes", "Sair"]; // vetor de opções do menu principal
options_menu = ["Volume", "Tela Cheia", "Voltar"]; // vetor de opções do menu de opções
sound_menu = ["Diminuir", "Volume", "Aumentar"]; // vetor para aumentar e diminuir o som
quit_menu = ["Não", "Sim"]; // menu para confirmação de saída
menu_control = [main_menu, options_menu, sound_menu, quit_menu]; // matriz de opções
menu_index = 0; //qual menu está sendo utilizado
menu_position = 0; // qual opção está sendo selecionada
// variáveis para checar se o mouse está se movendo
mx = mouse_x;
my = mouse_y;
// para detectar onde a caixa de seleção se encontra
selection = noone;
// para definir parametros de tamanho de vetores de acordo com o vetor selecionado
main_array = menu_control[menu_index];
mouse = true;
sound = false
quit = false
currentx = x
currenty = y