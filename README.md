### ImagemMagick
- Instalação: apt-get install imagemagick
- Comando para converter arquivos através da feramenta: convert arquivo.jpg arquivo.png
- Descompactar arquivos: unzip arquivo

### /home
- ~ = /home

### Primeiro Script

**Rodando o Script**
- nano arquivo.sh

<pre>
#!/bin/bash

convert ~/Documentos/SH/imagem.jpg ~/Documentos/SH/imagem.png
</pre>

**Rodando o Script**
- bash arquivo.sh

### Informando o Interpretador
- Na primeira linha: #!/bin/bash

### Utilização do Shell Script

**Pergunta:**
- Você foi chamado para uma entrevista de emprego e durante a entrevista, um dos desenvolvedores que está te entrevistando diz que o shell script é amplamente utilizado para automação de tarefas. 
- Com base na aula que você assistiu, qual é a sua opinião?

**Resposta**
- Você concorda com a afirmação, os scripts são muito utilizados quando temos tarefas corriqueiras que serão realizadas mais de uma vez, propiciando assim uma automatização de tais tarefas.

**Explicação**
- Os scripts são muito utilizados quando temos uma tarefa que precisa ser executada várias vezes, ao invés de digitarmos os comandos a cada vez, podemos consolidar em um script e executarmos esse script somente, proporcionando assim uma automatização de tarefas.

### O que seria a primeira linha?

**Pergunta**
- Em um script que você encontrou na internet possui a primeira linha com o código #!/bin/bash. 
- O que essa primeira linha indica?

**Resposta**
- Qual seria interpretador dos comandos presentes no script?

**Explicação**
- Essa primeira linha do script tem como finalidade indicar qual será o interpretador dos comandos presentes no script. 
- Nesse caso, será utilizado o bash como sendo o interpretador.

### Pegar o Conteúdo
- $1

### Segundo Script
- Script informando o nome do arquivo e convertendo de jpg para png.

<pre>
#!/bin/bash

convert ~/Documentos/SH/$1.jpg ~/Documentos/SH/$1.png
</pre>

**Rodando o script**
- bash arquivo.sh nomedoarquivo

### Terceiro Script
- Definindo uma constante - caminho do arquivo.
- Convertendo dois arquivos.

<pre>
#!/bin/bash

CAMINHO_IMAGENS=~/Documentos/SH

convert $CAMINHO_IMAGENS/$1.jpg $CAMINHO_IMAGENS/$1.png
convert $CAMINHO_IMAGENS/$2.jpg $CAMINHO_IMAGENS/$2.png
</pre>

**Rodando o script**
- bash script.sh imagem1 imagem2

### Pegando parâmetros passados pelo usuário

**Pergunta**
- Suponha que seu script precise receber apenas um parâmetro passado pelo usuário. Como fazer para pegar o conteúdo desse parâmetro?

**Resposta**
- Para que seja possível pegar o conteúdo do primeiro parâmetro devemos referenciá-lo com o número 1 no nosso script, sendo precedido do símbolo $, ficando $1

**Explicação**
- Para que seja possível acessar o conteúdo do primeiro parâmetro, nós devemos referenciar a posição 1 no nosso script e para dizermos que queremos o conteúdo desse parâmetro colocamos o símbolo $ antes, ficando $1

### Quarto Script
- Criando um for para converter diversos arquivos.

<pre>
#!/bin/bash

CAMINHO_IMAGENS=~/Documentos/SH

for imagem in $@
do
	convert $CAMINHO_IMAGENS/$imagem.jpg $CAMINHO_IMAGENS/$imagem.png
done
</pre>

**Engloba todos os parametros**
- $@

**Rodando o script**
- bash script.sh imagem1 imagem2 imagem3 imagem5 e etc..

### O que seria o $@?

**Pergunta**
- Um novo desenvolvedor júnior entrou em sua equipe e ao analisar um script ele encontra um símbolo $@. 
- Curioso, ele pergunta para você o que seria esse símbolo. O que você responderia?

**Resposta**
- Você diz que esse símbolo é utilizado para referenciar todos os parâmetros que podem ser passados para nosso script.

**Explicação**
- O símbolo $@ é utilizado para referenciar todos os parâmetros passados por um usuário para nosso script, sem precisar ao certo quantos parâmetros são.
