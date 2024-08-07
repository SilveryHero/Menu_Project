main_menu = ["Jogar","Configuracoes", "Sair"]; // vetor de opções do menu principal
options_menu = ["Volume", "Tela Cheia", "Voltar"]; // vetor de opções do menu de opções
menu_control = [main_menu, options_menu]; // matriz de opções
menu_index = 0; //qual menu está sendo utilizado
menu_position = 0; // qual opção está sendo selecionada
// variáveis para checar se o mouse está se movendo
mx = mouse_x;
my = mouse_y;
selection = noone;
main_array = menu_control[menu_index];
mouse = true;