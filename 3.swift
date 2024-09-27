//
//  main.swift
//  прпр
//
//  Created by Ganiya Nursalieva on 27.09.2024.
//


//  2.swift
//  IOSIOS
//
//  Created by Ganiya Nursalieva on 27.09.2024.
//
import Foundation

// Функции для конвертации температур
func celsiusToFahrenheit(_ celsius: Double) -> Double {
    return (celsius * 9/5) + 32
}

func celsiusToKelvin(_ celsius: Double) -> Double {
    return celsius + 273.15
}

func fahrenheitToCelsius(_ fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5/9
}

func fahrenheitToKelvin(_ fahrenheit: Double) -> Double {
    return (fahrenheit + 459.67) * 5/9
}

func kelvinToCelsius(_ kelvin: Double) -> Double {
    return kelvin - 273.15
}

func kelvinToFahrenheit(_ kelvin: Double) -> Double {
    return (kelvin * 9/5) - 459.67
}

// Основная функция для работы с вводом
func temperatureConverter() {
    print("Введите значение температуры:")
    guard let input = readLine(), let temperature = Double(input) else {
        print("Ошибка: введите числовое значение.")
        return
    }

    print("Введите единицу измерения (C для Цельсия, F для Фаренгейта, K для Кельвина):")
    guard let unit = readLine()?.uppercased() else {
        print("Ошибка: введите корректную единицу измерения.")
        return
    }

    switch unit {
    case "C":
        let fahrenheit = celsiusToFahrenheit(temperature)
        let kelvin = celsiusToKelvin(temperature)
        print("\(temperature)°C это \(fahrenheit)°F и \(kelvin)K")
        
    case "F":
        let celsius = fahrenheitToCelsius(temperature)
        let kelvin = fahrenheitToKelvin(temperature)
        print("\(temperature)°F это \(celsius)°C и \(kelvin)K")
        
    case "K":
        let celsius = kelvinToCelsius(temperature)
        let fahrenheit = kelvinToFahrenheit(temperature)
        print("\(temperature)K это \(celsius)°C и \(fahrenheit)°F")
        
    default:
        print("Ошибка: некорректная единица измерения. Используйте C, F, или K.")
    }
}

// Точка входа в программу
        temperatureConverter()  // Вызов функции
