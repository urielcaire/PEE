"""
Classe dedicada à avaliação de tempo do método de ordenação MergeSort.
O script utilizará um vetor preenchido com uma lista de números em sequência aleatória.
"""

import timeit

"""
Método de ordenação mergeSort
O método recebe um array como parametro.
"""
######### MargeSort #########
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
arquivo = open('numerosAleatorios5000.txt', 'r')
for linha in arquivo.readlines():
    lista.append(int(linha))
arquivo.close()

###gravando tempo em arquivo
arquivo = open('desordenados5000 - PY.txt', 'w')
for i in range(30):
	array = list(lista)
	inicio = timeit.default_timer()
	mergeSort(array)
	fim = timeit.default_timer()
	arquivo.write(str(fim-inicio))
	arquivo.write('\n')
arquivo.close()