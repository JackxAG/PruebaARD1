<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conversor de Temperatura</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <div id="resultContainer">
            <div id="conversionContainer">
                <h1 style="color:white">Conversor de Temperatura</h1>
                <form id="temperatureForm">
                <div class="inputbox">
                    <input placeholder="Temperatura:" class="input" type="text" id="inputTemp" name="inputTemp" required>
                    <span class="input-border"></span>
                </div>
                <div class="inputbox">                        
                    <label for="fromUnit" style="color:white">Convertir de:</label>
                    <select class="input" id="fromUnit" name="fromUnit">
                        <option style="color: white;" value="celsius">Celsius</option>
                        <option style="color: white;" value="fahrenheit">Fahrenheit</option>
                        <option style="color: white;" value="kelvin">Kelvin</option>
                    </select>
                    <span class="input-border"></span>
                </div>
                <div class="inputbox">    
                    <label for="toUnit" style="color:white">Convertir a:</label>
                    <select class="input" id="toUnit" name="toUnit">
                        <option style="color: white;" value="celsius">Celsius</option>
                        <option style="color: white;" value="fahrenheit">Fahrenheit</option>
                        <option style="color: white;" value="kelvin">Kelvin</option>
                    </select>
                    <span class="input-border"></span>
                </div>        
                        <button type="button" class="button" id="convertBtn">Convertir</button>
                </form>
            </div>
        </div>
    </div>
    <div id="imageContainer">
    <h1 style="color:white">Resultado</h1>
        <div id="result"></div>
        <img id="tempImage" src="" alt="Imagen de temperatura">
    </div>
    <script src="script.js"></script>
</body>
</html>


