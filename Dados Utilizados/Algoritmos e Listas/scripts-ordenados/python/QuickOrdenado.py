"""
Classe dedicada à avaliação de tempo do método de ordenação QuickSort.
O script utilizará utilizará um vetor de números já ordenados.
"""

"""
Método de ordenação QuickSort
O método recebe um array como parametro.
"""

######### QuickSort #########
def quickSort(arr, left, right):
	index = partition(arr, left, right)
	if left < index - 1:
		quickSort(arr, left, index-1)
	if index < right:
		quickSort(arr, index, right)


def partition(arr, left, right):
	i = left
	j = right

	pivot = arr[(left+right)//2]

	while i <= j:
		while arr[i] < pivot:
			i+=1
		while arr[j] > pivot:
			j-=1
		if i <= j:
			tmp = arr[i]
			arr[i] = arr[j]
			arr[j] = tmp
			i+=1
			j-=1
	return i

#####gerando array
lista = []
for i in range(20000):
    lista.append(i)

import timeit

###gravando tempo em arquivo
arquivo = open('Ordenados20000 - PY.txt', 'w')
for i in range(30):
    inicio = timeit.default_timer()
    quickSort(lista, 0, len(lista)-1)
    fim = timeit.default_timer()
    arquivo.write(str(fim-inicio))
    arquivo.write('\n')
arquivo.close()