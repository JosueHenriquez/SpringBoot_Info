package CursoJava.Curso.Controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Scanner;

@RestController
public class UsuarioController {

    @RequestMapping(value = "prueba") //Anotación que
    public List<String> prueba(){
        return List.of("Manzana", "Kiwi", "Banana");
    }

    @RequestMapping(value = "ejercicio1") //Anotación que
    public int ejercicio1(){
        int num1 = 4, num2 = 6;
        return num1 + num2;
    }

    @RequestMapping(value = "CatalogoEjercicios")
    public void CatalogoEjercicios(){
        Scanner sc = new Scanner(System.in);
        System.out.println("1. Ejercicio 1");
        System.out.println("2. Ejercicio 2");
        System.out.println("3. Ejercicio 3");
        System.out.println("4. Ejercicio 4");
        System.out.println("Seleccione un ejercicio ");
        int opcion = sc.nextInt();
        switch (opcion){
            case 1:
                System.out.println(ejercicio1());
                break;
            default:
                System.out.println("No has elegido ningún ejercicio válido.");
                break;
        }
    }
}


