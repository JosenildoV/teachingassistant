Feature: auto-avalia��o
		Como um aluno com o nome �Cicrano da Silva�
		Eu quero adicionar as notas da auto-avalia��o das minhas metas e visualizar os conceitos atribu�dos pelos professores
		De modo que eu possa registrar a minha auto-avalia��o no sistema


Scenario:	Adicionar os conceitos �s metas de avalia��o
			Given eu estou na p�gina �Atribui��o de conceitos�
			When eu preencho �MA� para  a meta �conceitos de requisitos�
			And eu preencho �MPA� para a meta �Requisitos com qualidade�
			And eu preencho �MPA� para a meta �Conc. ger. de conf.�
			Then eu vejo na tela uma mensagem de confirma��o

Scenario:	Adicionar conceitos �s metas
			Given o sistema n�o est� com a auto-avalia��o do �Aluno� �Cicrano da Silva� atribuido
			When	eu tento atribuir a auto-avalia��o de �Cicrano da Silva�
			Then o sistema armazena a auto-avalia��o de �Cicrano da Silva�