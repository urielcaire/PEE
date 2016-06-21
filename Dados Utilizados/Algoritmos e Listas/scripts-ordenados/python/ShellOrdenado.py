"""
Classe dedicada à avaliação de tempo do método de ordenação ShellSort.
O script utilizará utilizará um vetor de números já ordenados.
"""

"""
Método de ordenação ShellSort
O método recebe um array como parametro.
"""

#######shellsort########
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
for i in range(20000):
    lista.append(i)

import timeit

arquivo = open('numeros.txt', 'w')
for i in range(30):
    inicio = timeit.default_timer()
    shellSort(lista)
    fim = timeit.default_timer()
    arquivo.write(str(fim-inicio))
    arquivo.write('\n')
arquivo.close()