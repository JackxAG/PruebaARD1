document.addEventListener("DOMContentLoaded", () => {
    const inputTemp = document.getElementById("inputTemp");
    const fromUnit = document.getElementById("fromUnit");
    const toUnit = document.getElementById("toUnit");
    const convertBtn = document.getElementById("convertBtn");
    const result = document.getElementById("result");
    const tempImage = document.getElementById("tempImage");
    const imageContainer = document.getElementById("imageContainer");


    const conversionFormulas = {
        celsius: {
            fahrenheit: (temp) => (temp * 9/5) + 32,
            kelvin: (temp) => temp + 273.15
        },
        fahrenheit: {
            celsius: (temp) => (temp - 32) * 5/9,
            kelvin: (temp) => (temp - 32) * 5/9 + 273.15
        },
        kelvin: {
            celsius: (temp) => temp - 273.15,
            fahrenheit: (temp) => (temp - 273.15) * 9/5 + 32
        }
    };

    const images = {
        hot: "images/hot.png",
        cold: "images/cold.png",
        moderate: "images/moderate.png"
    };

    function isNumeric(value) {
        return /^-?\d+(\.\d+)?$/.test(value);
    }

    imageContainer.style.display = "none";

    function showImage(temp) {
        if (temp > 30) {
            tempImage.src = images.hot;
        } else if (temp < 10) {
            tempImage.src = images.cold;
        } else {
            tempImage.src = images.moderate;
        }

        imageContainer.style.display = "block";
    }

    convertBtn.addEventListener("click", () => {
        const tempValue = inputTemp.value.trim();
        if (!isNumeric(tempValue)) {
            alert("Por favor, introduce un valor numérico.");
            return;
        }

        const fromValue = fromUnit.value;
        const toValue = toUnit.value;

        if (fromValue === toValue) {
            alert("Las unidades de conversión no pueden ser iguales.");
            return;
        }

        const convertedTemp = conversionFormulas[fromValue][toValue](parseFloat(tempValue));
        result.textContent = `${tempValue} ${fromValue.charAt(0).toUpperCase() + fromValue.slice(1)} = ${convertedTemp.toFixed(2)} ${toValue.charAt(0).toUpperCase() + toValue.slice(1)}`;
        showImage(convertedTemp);

        saveResult(tempValue, fromValue, convertedTemp, toValue);
    });

    function saveResult(originalTemp, fromUnit, convertedTemp, toUnit) {
        fetch("resultado.php", {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({
                originalTemp,
                fromUnit,
                convertedTemp,
                toUnit
            })
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                console.log("Resultado guardado exitosamente");
            } else {
                console.error("Error al guardar el resultado");
            }
        })
        .catch(error => {
            console.error("Error en la solicitud:", error);
        });
    }
});
