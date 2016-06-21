package java.ordenado;

import java.io.FileNotFoundException;

/**
 * Classe dedicada à avaliação de tempo do método de ordenação ShellSort.
 * A classe utilizará um vetor de números já ordenados.
 * @author Uriel Cairê
 */
public class ShellOrdenado {

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
