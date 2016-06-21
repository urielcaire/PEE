"""
Classe dedicada à avaliação de tempo do método de ordenação ShellSort.
O script utilizará um vetor preenchido com uma lista de números em sequência aleatória.
"""

import timeit

"""
Método de ordenação shellSort
O método recebe um array como parametro.
"""

def shellSort(array):
     gap = len(array) // 2
     # loop over the gaps
     while gap > 0:
         # do the insertion sort
         for i in range(gap, len(array)):
             val = array[i]
             j = i
             while j >= gap and array[j - gap] > val:
                 array[j] = array[j - gap]
                 j -= gap
             array[j] = val
         gap //= 2


lista = []
arquivo = open('numerosAleatorios20000.txt', 'r')
for linha in arquivo.readlines():
    lista.append(int(linha))
arquivo.close()

###gravando tempo em arquivo
arquivo = open('desordenados20000 - PY.txt', 'w')
for i in range(30):
	array = list(lista)
	inicio = timeit.default_timer()
	shellSort(array)
	fim = timeit.default_timer()
	arquivo.write(str(fim-inicio))
	arquivo.write('\n')
arquivo.close()