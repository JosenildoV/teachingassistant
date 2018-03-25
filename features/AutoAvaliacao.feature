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


Scenario:	Adicionar os conceitos �s metas de avalia��o faltando uma meta
			Given eu estou na p�gina �Atribui��o de conceitos�
			When eu preencho �MA� para  a meta �conceitos de requisitos�
			And eu preencho �MPA� para a meta �Conc. ger. de conf.�
			Then eu vejo na tela a mensagem de erro �h� metas que n�o foram auto-avaliadas� 

Scenario:	Adicionar conceitos �s metas 
			Given o sistema n�o est� com a auto-avalia��o do �Aluno� �Cicrano da Silva� atribuido
			When	eu tento atribuir a auto-avalia��o de �Cicrano da Silva� 
			Then a auto-avalia��o de �Cicrano da Silva� n�o � armazenada no sistema

Scenario:	ver as auto-avalia��es de �1� �Aluno� com nenhuma discrep�ncia
			Given eu estou na p�gina �lista de alunos�
			And o aluno �Adalberto Ara�jo� tem �1� conceito inferior 
			And o aluno �Cicrano da Silva� tem �todos� conceitos superiores
			And a aluna �Fulana Soares� tem �todos� conceitos iguais
			When eu tento ver as auto-avalia��es da aluna �Fulana Soares�
			Then eu vejo as �notas� dados por mim e a aluna �Fulana Soares� iguais

Scenario:	ver as auto-avalia��es de �1� �Aluno� com discrep�ncia
			Given eu estou na p�gina �lista de alunos�
			And o aluno �Adalberto Ara�jo� tem �1� conceito inferior 
			And o aluno �Cicrano da Silva� tem �2� conceitos superiores
			And a aluna �Fulana Soares� tem �todos� conceitos iguais
			When eu tento ver as auto-avalia��es do aluno �Cicrano da Silva�
			Then eu vejo as �notas� do aluno �Cicrano da Silva�
			And vejo que o aluno � discrep�ncia
