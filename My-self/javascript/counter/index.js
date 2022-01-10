let count = 0;

let countEl = document.getElementById("count-el");
console.log(countEl);

// countEl.innerText = 1;
// onIncrement();

function onIncrement() {
    count++;
    countEl.innerText = count;
}