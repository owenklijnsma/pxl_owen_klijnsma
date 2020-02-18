//Fibonacci
function fibonacci (value) {
    if (value === 1 || value === 2) {
        return 1;
    } else {
        return fibonacci(value - 2) + fibonacci(value - 1);
    }
}

console.log(fibonacci(8));