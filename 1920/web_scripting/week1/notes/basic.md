# Week 1: Values, Types & Operators
## Values
### `var`
`var` is declared globally. This means a function using a `var` can run even if the variable is declared later in the code. It also can be changed later in the code, and it's value altered after that.
```javascript
if (example != 0) {
    console.log('This works!'); //This will output
}

var example = 1; //This happens "before" the if-statement
example = 0; //This happens after the if-statement
```
> This works because `var` is declared globally.

### `let`
`let` is usable only in the scope or statement that it's declared in. Code like above will not work with `let`, it needs to be declared before usage. It also can be changed later in the code, and it's value altered after that. `let` allows declaration and initialisation to be seperate. Multiple variables can be declared on one line.
```javascript
if (example != 0) {
    console.log('This works!'); //This will return an error
}

let example = 1; //This happens after the if-statement
example = 0;
```
> This won't work, because `let` needs to be declared before usage.
```javascript
let a, b, c = 1, 2, 3; //Multiple variables declared and initialised on one line
let example; //This happens before the if-statement
example = 1; //Initilisation can happen seperately
example = 0;

if (example != 0) {
    console.log('This works!'); //example was set to 0, so this won't output
}
```
> This will work, because `let` was declared before usage.

### `const`
`const` is used to declare a variable that can't be changed later in the code. Like `let`, it needs declaration before usage. Multiple variables can be declared and initialised on one line.
```javascript
const a = 1, b = 2;
const example = 1;
example = 0; //This will return an error, because example is a constant value

if (example != 0) {
    console.log('This works!');
}
```
> This returns and error because a `const` can't be changed after decleration.
---
## Types
### Primitive datatypes
- `number`
- `string`
- `boolean`
- `null`
- `undefined`

### Reference datatypes
- `array`
- `function`
- `object`
> `null` and `undefined` are not the same. `undefined` will be assigned to any variable that is declared but not initialised, while `null` is a user-given value, and can't be auto-assigned to a variable.
---
## Operators
### Bewerkingen:
```javascript
let number = 0;
number += 10; //10
number -= 5; //5
number *= 6; //30
number /= 5; //6
number %= 5; //1
```

### Single & double quotes
```javascript
let welcome = "Hello World";
let welcome2 = 'Hello World';
```

### Backticks
```javascript
let number = 12;
console.log(`${number} + 1 = ${number + 1}`); //12 + 1 = 13
console.log(`half of 100 is ${100 / 2}`); //half of 100 is 50
```

### Geen char
```javascript
let firstSymbol = welcome[0];
console.log(firstSymbol); //H
console.log(typeof firstSymbol); //string
```

### Concatenatie:
```javascript
console.log('a' + 'bc'); //abc
```

### Ternary if
```javascript
let age = 19;
let userType = age < 18 ? 'minor' : 'adult';
```
---
`break;`