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

public class GuardaProducto {

    public static void add(Producto p, String path) throws IOException {
        File archivo;
        FileWriter fw = null;
        PrintWriter pw = null;
        try {
//archivo = new File(ruta);
            archivo = new File(path);
            fw = new FileWriter(archivo, true);
            pw = new PrintWriter(fw);
            pw.println(p.getClave() + "," + p.getNombre() + "," + p.getPrecio() + "," + p.getCantidad());
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (pw != null) {
                    pw.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

}
