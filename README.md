## Repositório *SECRETO* contendo as resoluções dos alunos de CL 2022.1.
### *Importante:* não cole dos seus amigos. Apenas inspire-se nas resoluções deles.

# Ferramentas:

Instale o `ghdl` e o `gtkwave` na sua máquina. No Ubuntu é assim:

```
sudo apt-get install ghdl gtkwave
```

# Como compilar:

Recomendo fortemente o uso do aquivo [Makefile](Makefile) presente na pasta raiz.
Para executá-lo, use os seguintes comandos:

```
make FILE=NOME_DO_ARQUIVO ENTITY=NOME_DA_ENTIDADE
make tb FILE=NOME_DO_ARQUIVO ENTITY=NOME_DA_ENTIDADE
```
Vendo o Makefile, perceba que o `ENTITY` é opcional caso o nome do arquivo e o nome da entidade são iguais!
Caso você já tenha o arquivo de test bench, podes executar apenas o segundo comando.

## Alternativamente:
```
ghdl -a NOME_DO_ARQUIVO.vhdl
ghdl -m NOME_DA_ENTIDADE

ghdl -a NOME_DO_ARQUIVO_DE_TEST_BENCH.vhdl
ghdl -m NOME_DA_ENTIDADE_DO_TEST_BENCH
ghdl -r NOME_DA_ENTIDADE_DO_TEST_BENCH --wave=wave.ghw
```

# Como executar os arquivos de onda:

Rode o comando:

```
gtkwave wave.ghw
```

# Como limpar os arquivos auxiliares:

```
make c
```

## Alternativamente:
```
ghdl --clean
```
