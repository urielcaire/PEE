"""
Classe dedicada à avaliação de tempo do método de ordenação MergeSort.
O script utilizará utilizará um vetor de números já ordenados.
"""

"""
Método de ordenação mergeSort
O método recebe um array como parametro.
"""

#######mergesort########
def mergeSort(alist):
    if len(alist)>1:
        mid = len(alist)//2
        lefthalf = alist[:mid]
        righthalf = alist[mid:]

        mergeSort(lefthalf)
        mergeSort(righthalf)

        i=0
        j=0
        k=0
        while i < len(lefthalf) and j < len(righthalf):
            if lefthalf[i] < righthalf[j]:
                alist[k]=lefthalf[i]
                i=i+1
            else:
                alist[k]=righthalf[j]
                j=j+1
            k=k+1

        while i < len(lefthalf):
            alist[k]=lefthalf[i]
            i=i+1
            k=k+1

        while j < len(righthalf):
            alist[k]=righthalf[j]
            j=j+1
            k=k+1


lista = []
for i in range(5000):
    lista.append(i)

import timeit

arquivo = open('numeros.txt', 'w')
for i in range(30):
    inicio = timeit.default_timer()
    mergeSort(lista)
    fim = timeit.default_timer()
    arquivo.write(str(fim-inicio))
    arquivo.write('\n')
arquivo.close()