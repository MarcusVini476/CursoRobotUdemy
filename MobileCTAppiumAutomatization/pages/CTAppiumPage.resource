# Qual o padrão das variaveis aqui: ${1_2_3_4}

# 1: aqui vem o tipo de componente (Title,Btn,Txt)
# 2: vem o nome do componente
# 3:  a página ao qual o componente pertence
# 4: identificar 

*** Variables ***
# Aqui será inserido os caminhos, xpaths, tudo para interagir com a página do CTAppium
${Menu_About..._CTAppium}                              xpath=//android.widget.TextView[@text="About..."]
${Menu_Formulário_CTAppium}                            xpath=//android.widget.TextView[@text="Formulário"]
${Menu_SeuBarriga Nativo_CTAppium}                     xpath=//android.widget.TextView[@text="SeuBarriga Nativo"]
${Menu_SeuBarriga Híbrido_CTAppium}                    xpath=//android.widget.TextView[@text="SeuBarriga Híbrido"]
${Menu_Alertas_CTAppium}                               xpath=//android.widget.TextView[@text="Alertas"]
${Menu_Splash_CTAppium}                                xpath=//android.widget.TextView[@text="Splash"]
${Menu_Abas_CTAppium}                                  xpath=//android.widget.TextView[@text="Abas"]
${Menu_Accordion_CTAppium}                             xpath=//android.widget.TextView[@text="Accordion"]
${Menu_Cliques_CTAppium}                               xpath=//android.widget.TextView[@text="Cliques"]
${Menu_Swipe_CTAppium}                                 xpath=//android.widget.TextView[@text="Swipe"]
${Menu_SwipeList_CTAppium}                             xpath=//android.widget.TextView[@text="Swipe List"]
${Menu_Drag and drop_CTAppium}                         xpath=//android.widget.TextView[@text="Drag and drop"]
${Menu_Opção bem escondida_CTAppium}                   xpath=//android.widget.TextView[@text="Opção bem escondida"]

#variaveis que da pra reusar em algum momento


#Variaveis relacionadas ao componente About...

${Title_titulo1_About..._CTAppium}                   xpath=//android.widget.TextView[@text="App desenvolvida para o curso: "]
${TXT_texto1_About..._CTAppium}                      xpath=//android.widget.TextView[@text="Testes funcionais de aplicações Android com Appium"]
${TXT_texto2_About..._CTAppium}                      xpath=//android.widget.TextView[@text="Wcaquino.me"]
${TXT_texto3_About..._CTAppium}                      xpath=//android.widget.TextView[@text="Versão 2.0"]                         
${IMG_imagem1_About..._CTAppium}                     xpath=//android.widget.ImageView


#Variaveis relacionadas ao componente Formulário

${Title_titulo1_Formulário_CTAppium}                 xpath=//android.widget.TextView[@text="CT Appium"]
${Field_CampoNome_Formulário_CTAppium}               xpath=//android.widget.EditText[@content-desc="nome"]
${Box_CaixaConsole_Formulário_CTAppium}              xpath=//android.widget.TextView[@resource-id="android:id/text1"]
${BTN_BotaoCaixaConsole_Formulário_CTAppium}         xpath=//android.widget.Spinner[@content-desc="console"]
${Slider_Slider_Formulário_CTAppium}                 xpath=//android.view.ViewGroup[@content-desc="slid"]/android.view.ViewGroup[2]
${Select_SelecionarCaixa_Formulário_CTAppium}        xpath=//android.widget.CheckBox[@content-desc="check"]
${Switch_Switch_Formulário_CTAppium}                 xpath=//android.widget.Switch[@content-desc="switch"]
${TXT_CampoData_Formulário_CTAppium}                 xpath=//android.widget.TextView[@text="01/01/2000"]
${TXT_CampoHorario_Formulário_CTAppium}              xpath=//android.widget.TextView[@text="01/01/2000"]
${BTN_Salvar_Formulário_CTAppium}                    xpath=//android.widget.Button[@content-desc="save"]   
${BTN_SalvarDemorado_Formulário_CTAppium}            xpath=(//android.widget.Button[@resource-id="idButtonTest"])[2]
${BTN_Limpar_Formulário_CTAppium}                    xpath=(//android.widget.Button[@resource-id="idButtonTest"])[2]
${Escolhe_PS4_Formulário_CTAppium}                   xpath=//android.widget.CheckedTextView[@resource-id="android:id/text1" and @text="PS4"]
${Escolhe_XBox_Formulário_CTAppium}                  xpath=//android.widget.CheckedTextView[@resource-id="android:id/text1" and @text="XBox One"]
${Escolhe_Nintendo_Formulário_CTAppium}              xpath=//android.widget.CheckedTextView[@resource-id="android:id/text1" and @text="Nintendo Switch"]
${ProgressBar_carregando_Formulário_CTAppium}        xpath=//android.widget.ProgressBar
























