let sumEl = document.getElementById("sum");

let firstNumberEl = document.getElementById("first-number");
let secondNumberEl = document.getElementById("second-number");
let firstNumber = firstNumberEl.innerText;
let secondNumber = secondNumberEl.innerText;


function add() {
    document.getElementById("sum").textContent = "sum: ";
    let sum = Number(firstNumber) + Number(secondNumber);
    document.getElementById("sum").textContent += sum;
}



function substract() {
    document.getElementById("sum").textContent = "sub: ";
    let sum = Number(firstNumber) - Number(secondNumber);
    document.getElementById("sum").textContent += sum;
}



function multiplication() {
    document.getElementById("sum").textContent = "mul: ";
    let sum = Number(firstNumber) * Number(secondNumber);
    document.getElementById("sum").textContent += sum;
}


function divide() {
    document.getElementById("sum").textContent = "div: ";
    let sum = Number(firstNumber) / Number(secondNumber);
    document.getElementById("sum").textContent += sum;
}