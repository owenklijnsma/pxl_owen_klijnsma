//Even
function isEven (value) {
    if (value === 0) {
        return 'Value is even.';
    } else if (value === 1) {
        return 'Value is odd.';
    } else {
        return isEven(value - 2);
    }
}

console.log(isEven(5));