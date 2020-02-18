//Minimum

function minimum(number1, number2) {
    if (number1 - number2 > number2 - number1) {
        console.log('Number 1 is the largest.');
    } else if (number1 - number2 === number2 - number1) {
        console.log('They\'re the same.');
    } else {
        console.log('Number 2 is the largest.');
    }
}

minimum(4, 5);