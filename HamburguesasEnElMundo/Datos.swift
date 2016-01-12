//
//  Datos.swift
//  HamburguesasEnElMundo
//
//  Created by Jose Navarro Alabarta on 12/1/16.
//  Copyright © 2016 ai2-upv. All rights reserved.
//

/*
Crea una aplicación que le muestra al usuario las hamburguesas del mundo, con un precio aleatorio.

Crea una aplicación para iPhone que le muestre hamburguesas del mundo al usuario. Durante este reto revisarás los conceptos que hemos trabajado del desarrollo de aplicaciones para iPhone y las bases que revisamos de Swift versión 2.0.

Crea un proyecto nuevo en Xcode que se llame Hamburguesas y desarrolla lo siguiente:

    1. Crea un archivo de Swift llamado: Datos.swift, dentro de él declara las siguientes clases:

        a. class ColeccionDePaises

        b. La clase tiene como atributos un arreglo de países de tipo [String], al menos debes contar con  20 países.

        c. La clase define el método: func obtenPais( )->String, regresa de manera aleatoria un país del arreglo, recuerda usar la función de la siguiente manera: Int(arc4random() % x), donde x puede ser el tamaño del arreglo países.

    2. Dentro del mismo archivo, Datos.swift, crea la clase:

        a. class ColeccionDeHamburguesa

        b. La clase tiene como atributos un arreglo de hamburguesas de tipo [String], al menos debes contar con  20 hamburguesas al igual que el número de países.

        c. La clase define el método: func obtenHamburguesa( )->String, regresa de manera aleatoria una hamburquesa del arreglo, recuerda usar la función de la siguiente manera: Int(arc4random() % x), donde x puede ser el tamaño del arreglo de hamburguesas.

    3. Dentro de tu interfaz gráfica debes contar con:

        a. Una etiqueta para mostrar el nombre del país.

        b. Otra etiqueta para mostrar el nombre de la hamburguesa.

        c. Un botón, con la leyenda: “Quiero una hamburguesa!”

        d. Debes de mostrar los elementos centrados en la interfaz gráfica

    4. En la clase ViewController: desarrolla lo siguiente:

        a. Una instancia de la clase ColeccionDePaises.

        b. Una instancia de la clase ColeccionDeHamburguesas.

        c. Un @IBoutlet para la etiqueta de país.

        d. Un @IBoutlet para la etiqueta de hamburguesa.

        e. Un @IBAction para implementar cambiar de país y de hamburguesa.

    5. Al presionar el botón debes cambiar el país y la hamburguesa que se despliegan en las etiquetas, de manera opcional cambia el color de fondo como se realizo en los videos del módulo 5.
*/

import Foundation
import UIKit

class ColeccionDePaises{

    let paises = ["España",
                  "Portugal",
                  "Francia",
                  "Italia",
                  "Alemania",
                  "Reino Unido",
                  "Finlandia",
                  "Suiza",
                  "China",
                  "Australia",
                  "Austria",
                  "Iraq",
                  "Irán",
                  "Venezuela",
                  "Argentina",
                  "Ecuador",
                  "Canada",
                  "Cuba",
                  "Costa Rica",
                  "Mexico"]
    func obtenerFraseRandom() -> String{
        let pais = Int(arc4random()) % paises.count
        return paises[pais]
    }

}

class ColeccionDeHamburguesa{
    let hamburguesas = ["española",
        "argentina",
        "ternera",
        "raza nostra",
        "deportista",
        "de pueblo",
        "barbacoa",
        "bacon",
        "madrid",
        "parmigiano",
        "ranchera",
        "a la antigua",
        "roquefort",
        "cebolla pochada",
        "transilvania",
        "asturiana",
        "al oporto",
        "trufa",
        "4 quesos",
        "wagyu"]

    func obtenerFraseRandom() -> String{
        let hamburguesa = Int(arc4random()) % hamburguesas.count
        return hamburguesas[hamburguesa]
    }

}

class  Colores{
    
    let colores = [
        UIColor(red: 210/255, green: 90/255, blue: 45/255, alpha: 1),
        UIColor(red: 40/255, green: 170/255, blue: 45/255, alpha: 1),
        UIColor(red: 3/255, green: 180/255, blue: 90/255, alpha: 1),
        UIColor(red: 210/255, green: 190/255, blue: 5/255, alpha: 1),
        UIColor(red: 120/255, green: 120/255, blue: 50/255, alpha: 1),
        UIColor(red: 130/255, green: 80/255, blue: 90/255, alpha: 1),
        UIColor(red: 130/255, green: 130/255, blue: 130/255, alpha: 1),
        UIColor(red: 33/255, green: 50/255, blue: 90/255, alpha: 1),
        
        UIColor(red: 1/255, green: 10/255, blue: 200/255, alpha: 1),
        UIColor(red: 10/255, green: 20/255, blue: 210/255, alpha: 1),
        UIColor(red: 20/255, green: 30/255, blue: 220/255, alpha: 1),
        UIColor(red: 30/255, green: 40/255, blue: 230/255, alpha: 1),
        UIColor(red: 40/255, green: 60/255, blue: 240/255, alpha: 1),
        UIColor(red: 50/255, green: 70/255, blue: 250/255, alpha: 1),
        UIColor(red: 60/255, green: 100/255, blue: 255/255, alpha: 1),
        UIColor(red: 70/255, green: 110/255, blue: 1/255, alpha: 1),
        UIColor(red: 80/255, green: 190/255, blue: 90/255, alpha: 1),
        UIColor(red: 90/255, green: 160/255, blue: 80/255, alpha: 1),
        UIColor(red: 100/255, green: 150/255, blue: 70/255, alpha: 1),
        UIColor(red: 110/255, green: 1400/255, blue: 60/255, alpha: 1)
    
    ]
    
    func obtenerColorRandom() -> UIColor{
        let color = Int(arc4random()) % colores.count
        return colores[color]
    }
}
