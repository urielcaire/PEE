
package java.aleatorio;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Scanner;

/**
 * Classe dedicada à avaliação de tempo do método de ordenação QuickSort.
 * A classe utilizará um vetor preenchido com uma lista de números em sequência aleatória.
 * @author Uriel Cairê
 */
public class QuickAleatorio {

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
            quickSort(arrayClone, 0, array.length - 1);
            long TempoTotal= System.nanoTime() - TempoInicial;
            System.out.println(TempoTotal);
        }
        
        
    }
    
    /**
     * Método de ordenação QuickSort.
     * @param arr contém o um vetor de inteiros que devem ser ordenados.
     * @param left posição do primeiro a esquerda item do vetor.
     * @param right posição do último item a direita do vetor.
     */
    public static void quickSort(int arr[], int left, int right) {

        int index = partition(arr, left, right);

        if (left < index - 1) {
            quickSort(arr, left, index - 1);
        }

        if (index < right) {
            quickSort(arr, index, right);
        }

    }

    public static int partition(int arr[], int left, int right) {

        int i = left, j = right;

        int tmp;

        int pivot = arr[(left + right) / 2];

        while (i <= j) {

            while (arr[i] < pivot) {
                i++;
            }

            while (arr[j] > pivot) {
                j--;
            }

            if (i <= j) {

                tmp = arr[i];

                arr[i] = arr[j];

                arr[j] = tmp;

                i++;

                j--;

            }

        };

        return i;

    }
    
}
