package java.aleatorio;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Scanner;

/**
 * Classe dedicada à avaliação de tempo do método de ordenação MergeSort.
 * A classe utilizará um vetor preenchido com uma lista de números em sequência aleatória.
 * @author Uriel Cairê
 */
public class MergeAleatorio {

    /**
     * No main é feita a leitura dos dados que preencherão o vetor a ser ordenado;
     * É feita, também no main, a chamada do ordenador por 30 vezes;
     * Por fim, os tempos de execução são exibidos em nanossegundos.
     * @param args the command line arguments
     */
    public static void main(String[] args) throws FileNotFoundException {
        int x = 5000;
        int array[] = new int[x];
        int i = 0;
        int aux;
        Scanner scanner = new Scanner(new FileReader("numerosAleatorios5000.txt")).useDelimiter("\n");
        while (scanner.hasNext()) {
            String str = scanner.nextLine();
            aux = Integer.parseInt(str);
            if(i<x){
                array[i] = aux;
                i++;
            }
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
