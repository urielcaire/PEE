package java.ordenado;

import java.io.FileNotFoundException;

/**
 * Classe dedicada à avaliação de tempo do método de ordenação MergeSort.
 * A classe utilizará um vetor de números já ordenados.
 * @author Uriel Cairê
 */
public class MergeOrdenado {

    /**
     * No main é criado o vetor a ser utilizado;
     * É feita a chamada do ordenador por 30 vezes;
     * Por fim, os tempos de execução são exibidos em nanossegundos.
     * @param args the command line arguments
     */
    public static void main(String[] args) throws FileNotFoundException {
        int x = 20000;
        int array[] = new int[x];
		
		for (int i = 0; i < x; i++) {
            array[i] = i;
        }
        
        int[] arrayClone;
        
        for (int j = 0; j < 30; j++) {
            arrayClone = array.clone();
            long TempoInicial = System.nanoTime();
            MergeSort(arrayClone, 0, array.length - 1);
            long TempoTotal= System.nanoTime() - TempoInicial;
            System.out.println(TempoTotal);
        }
        
        
    }
    
    /**
     * Método de ordenação MergeSort.
     * @param vetor contém o um vetor de inteiros que devem ser ordenados.
     * @param inicio posição do primeiro item do vetor.
     * @param fim posição do último item do vetor.
     */
    public static void MergeSort(int[] vetor, int inicio, int fim) {
    if (fim <= inicio) {
        return;
    }
    int meio = (inicio + fim) / 2;
    MergeSort(vetor, inicio, meio);
    MergeSort(vetor, meio + 1, fim);
    int[] A = new int[meio - inicio + 1];
    int[] B = new int[fim - meio];
    for (int i = 0; i <= meio - inicio; i++) {
        A[i] = vetor[inicio + i];
    }
    for (int i = 0; i <= fim - meio - 1; i++) {
        B[i] = vetor[meio + 1 + i];
    }
    int i = 0;
    int j = 0;
    for (int k = inicio; k <= fim; k++) {
        if (i < A.length && j < B.length) {
            if (A[i] < B[j]) {
                vetor[k] = A[i++];
            } else {
                vetor[k] = B[j++];
            }
        } else if (i < A.length) {
            vetor[k] = A[i++];
        } else if (j < B.length) {
            vetor[k] = B[j++];
        }
    }
    }
    
    
    
}
