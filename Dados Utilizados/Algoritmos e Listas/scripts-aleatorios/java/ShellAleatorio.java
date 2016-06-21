package java.aleatorio;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Scanner;

/**
 * Classe dedicada à avaliação de tempo do método de ordenação ShellSort.
 * A classe utilizará um vetor preenchido com uma lista de números em sequência aleatória.
 * @author Uriel Cairê
 */
public class ShellAleatorio {

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
            ShellSort(arrayClone);
            long TempoTotal= System.nanoTime() - TempoInicial;
            System.out.println(TempoTotal);
        }
        
        
    }
    
    /**
     * Método de ordenação ShellSort.
     * @param vetor contém o um vetor de inteiros que devem ser ordenados.
     */
    public static void ShellSort(int[] vetor) {
        int h = 1;
        int n = vetor.length;
        while(h < n)
                h = h * 3 + 1;
        h = h / 3;
        int c, j;
        while (h > 0) {
            for (int i = h; i < n; i++) {
                c = vetor[i];
                j = i;
                while (j >= h && vetor[j - h] > c) {
                    vetor[j] = vetor[j - h];
                    j = j - h;
                }
                vetor[j] = c;
            }
            h = h / 2;
        }
    }
    
    
    
}
