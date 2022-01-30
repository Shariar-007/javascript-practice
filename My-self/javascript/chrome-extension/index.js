let myLeads = [];
const inputEl = document.getElementById("input-el");
const inputBtn = document.querySelector("#input-btn");
const ulEl = document.getElementById("ul-el");
const divEl = document.getElementById("div-el");

inputBtn.addEventListener("click", function() {
    myLeads.push(inputEl.value);
    console.log(myLeads);
});

for (let i = 0; i < myLeads.length; i++) {
    ulEl.innerHTML += "<li>" + myLeads[i] + "</li>"
        // alternative
        // const li = document.createElement("li");
        // li.textContent = myLeads[i];
        // ulEl.append(li);
        // console.log(ulEl);
}

// divEl.innerHTML = "<button type='button' onclick='buy()'>Buy!</button>";

// function buy() {
//     divEl.innerHTML = "<p>Thank you for buying</p>";
// }