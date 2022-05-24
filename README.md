# CL-2022.1

 Repositório *SECRETO* contendo as resoluções só dos cara!
 Importante: não cole dos seus amigos. Apenas se inspire em suas resoluções.

# Como compilar:

```
make
make tb
```

## Alternativamente:
```
ghdl -a NOME_ARQUIVO.vhdl
ghdl -m NOME_ARQUIVO
ghdl -a NOME_ARQUIVO_TEST_BENCH.vhdl
ghdl -m NOME_ARQUIVO_TEST_BENCH
ghdl -r NOME_ARQUIVO_TEST_BENCH --wave=wave.ghw
```

# Como executar os arquivos de onda:

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
