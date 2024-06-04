# VagrantK8S
meus testes de minik8s com vagrant
baseados em:
https://computingforgeeks.com/install-kubernetes-cluster-ubuntu-jammy/

## targets para o Makefile
- all: cicle

 target default o mesmo que cicle

- cicle: clean run postrun

 destroi e reconstroi o servidor e o cluster miniK8S

- restore:

 restaura o servidor e o cluster 

- ssh:

  limpa as chaves conhecidas do servidor

  salva as novas chaves do servidor

  inclui a minha chave pessoal no servidor

  testa o acesso normal e sudo

- miniprov:

  restaura o servidor
 
  executa o yaml de teste de ansible

- prov:

  restaura o servidor

  provisiona o servidor com o vagrant

- halt:

  Salva o servidor

  interrompe sua execução

- run:

  Cria o servidor

  ou se ja existir inicia ele.


