/**
 * @author Prof Matias Garcia.
 * <p> Copyright (C) 2022 para <a href = "https://www.profmatiasgarcia.com.ar/"> www.profmatiasgarcia.com.ar </a>
 * - con licencia GNU GPL3.
 * <p> Este programa es software libre. Puede redistribuirlo y/o modificarlo bajo los términos de la
 * Licencia Pública General de GNU según es publicada por la Free Software Foundation, 
 * bien con la versión 3 de dicha Licencia o bien (según su elección) con cualquier versión posterior. 
 * Este programa se distribuye con la esperanza de que sea útil, pero SIN NINGUNA GARANTÍA, 
 * incluso sin la garantía MERCANTIL implícita o sin garantizar la CONVENIENCIA PARA UN PROPÓSITO
 * PARTICULAR. Véase la Licencia Pública General de GNU para más detalles.
 * Debería haber recibido una copia de la Licencia Pública General junto con este programa. 
 * Si no ha sido así ingrese a <a href = "http://www.gnu.org/licenses/"> GNU org </a>
 **/
package Controllers;

import Models.Producto;
import java.io.*;
import java.util.ArrayList;

public class LeeProductos {

    private static int cont = 0;
    private static File archivo;
    private static FileReader fr;
    private static BufferedReader br;
    static ArrayList<Producto> productos = new ArrayList<Producto>();

    public static ArrayList<Producto> leeProductos(String path) {
        try {
            archivo = new File(path);
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            String linea = null;
            String[] tokensLinea = null;
            int clave;
            String nombre;
            Double precio;
            int cant;
            Producto producto;
            linea = br.readLine();
            while (linea != null) {
                tokensLinea = linea.split(",");
                clave = Integer.parseInt(tokensLinea[0]);
                nombre = tokensLinea[1];
                precio = Double.parseDouble(tokensLinea[2]);
                cant = Integer.parseInt(tokensLinea[3]);
                producto = new Producto(clave, nombre, precio, cant);
                productos.add(producto);
                cont++;
                linea = br.readLine();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (null != fr) {
                    fr.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return productos;
    }

    public static int getCont() {
        return cont;
    }

    public static void clearCont() {
        cont = 0;
    }
}
