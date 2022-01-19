let player = {
    name: "Per",
    chips: 145
};
let cards = [];
let sum = 0;
let hasBlackJack = false;
let isAlive = false;
let message = "";
let messageEl = document.getElementById('message-el');
// let sumEl = document.getElementById("sum-el");
// alternative 
let sumEl = document.querySelector('#sum-el');
let cardEl = document.getElementById("cards-el");

let playerEl = document.getElementById("player-el");

function getRandomCard() {
    // if A = return 11
    // if J, K, Q = return 10
    let randomNumber = Math.floor(Math.random() * 13) + 1;
    if (randomNumber > 10) return 10;
    if (randomNumber === 1) return 11;
    return randomNumber
}

function onStartGame() {
    playerEl.textContent = player.name + ': $' + player.chips;
    isAlive = true;
    let firstCard = getRandomCard();
    let secondCard = getRandomCard();
    cards = [firstCard, secondCard];
    sum = cards[0] + cards[1];
    onRenderGame();
}

function onRenderGame() {
    sumEl.textContent = "sum: " + sum;
    cardEl.textContent = "cards: ";
    for (let i = 0; i < cards.length; i++) {
        cardEl.textContent += cards[i] + ' ';
    }
    if (sum <= 20) {
        message = "Do you want to draw a new card?";
    } else
    if (sum === 21) {
        message = "Wohoo! you've got Blackjack!";
        hasBlackJack = true;
    } else {
        message = "You are out of the game!";
        isAlive = false;

    }
    // console.log(message);
    messageEl.textContent = message;
}

function onAddNewCard() {
    if (hasBlackJack === false && isAlive === true) {
        let card = getRandomCard();
        sum += card;
        cards.push(card);
        onRenderGame();
    }
}