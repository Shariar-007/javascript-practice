let count = 0;
let countEl = document.getElementById("count-el");
let saveEl = document.getElementById("save-el");


function onIncrement() {
    count++;
    // countEl.innerText = count;
    countEl.textContent = count;
}

function save() {
    // saveEl.innerHTML += count + " - ";
    // console.log(count);
    saveEl.textContent += count + " - ";
    countEl.textContent = 0;
    count = 0;
}