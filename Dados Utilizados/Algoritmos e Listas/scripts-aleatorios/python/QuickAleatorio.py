"""
Classe dedicada à avaliação de tempo do método de ordenação QuickSort.
O script utilizará um vetor preenchido com uma lista de números em sequência aleatória.
"""

import timeit

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
	quickSort(array, 0, len(lista)-1)
	fim = timeit.default_timer()
	arquivo.write(str(fim-inicio))
	arquivo.write('\n')
arquivo.close()