let myLeads = [];
let oldLeads = [];
const inputEl = document.getElementById("input-el");
const inputBtn = document.querySelector("#input-btn");
const ulEl = document.getElementById("list-id");
const deleteBtn = document.getElementById("delete-btn");
const saveBtn = document.getElementById('save-btn');
const tabs = [{
    url: 'https: //www.linkedin.com/in/shariar/'
}];


let leadsFromLocalStorage = JSON.parse(localStorage.getItem(myLeads));
if (leadsFromLocalStorage) {
    myLeads = leadsFromLocalStorage;
    renderLeads(myLeads);
}

function renderLeads(leads) {
    let listItems = '';
    for (let i = 0; i < leads.length; i++) {
        // alternative
        // const li = document.createElement("li");
        // li.textContent = myLeads[i];
        // ulEl.append(li);
        // console.log(ulEl);

        // listItems += "<li class = 'list-group-item'> <a target='_blank' href='" + myLeads[i] + "' >" + myLeads[i] + "</a></li>";
        listItems += `<li class = 'list-group-item'> 
        <a target='_blank' href='${leads[i]}' > ${leads[i]} </a>
        </li>`;
    }
    ulEl.innerHTML = listItems;
};

inputBtn.addEventListener("click", function() {
    myLeads.push(inputEl.value);
    localStorage.setItem('myLeads', JSON.stringify(myLeads));
    inputEl.value = "";
    renderLeads(myLeads);
});

deleteBtn.addEventListener('dblclick', function() {
    localStorage.clear()
    myLeads = [];
    renderLeads(myLeads);
});

saveBtn.addEventListener('click', function() {
    chrome.tabs.query({
            active: true,
            currentWindow: true
        },
        function(tabs) {
            myLeads.push(tabs[0].url);
            localStorage.setItem('myLeads', JSON.stringify(myLeads));
            renderLeads(myLeads);
        });
});