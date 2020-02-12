//Global variable
let amountOfLines = 7;

//Triangle A
console.log("Triangle A:");

for (let i = 1; i <= amountOfLines; i++) {
  let row = "";
  for (let j = 1; j <= i; j++) {
    row += "#\t";
  }

  console.log(row);
}

console.log("");

//Triangle B
console.log("Triangle B:");

for (let i = 1; i <= amountOfLines; i++) {
  let row = "";
  for (let j = 1; j <= amountOfLines - i; j++) {
    row += "\t";
  }
  for (let k = 1; k <= i; k++) {
    row += "#\t";
  }
  console.log(row);
}

console.log("");

//Triangle C
console.log("Triangle C:");

for (let i = 0; i < amountOfLines; i++) {
  let row = "";
  for (let j = 1; j < amountOfLines - i; j++) {
    row = row + "\t";
  }
  for (let k = 1; k <= 2 * i + 1; k++) {
    row = row + "#\t";
  }
  console.log(row);
}

console.log("");

//Triangle D
console.log("Triangle D:");

let interval = 5;
let christmasTree = "";
let count = 5;

for (let i = 0; i < amountOfLines; i++) {
  let row = "";
  for (let j = 1; j < amountOfLines - i; j++) {
    row = row + "\t";
  }
  for (let k = 1; k <= 2 * i + 1; k++) {
    if (count % 5 === 0) {
      row = row + "@\t";
    } else {
      row = row + "#\t";
    }
    count++;
  }
  christmasTree += row + "\n";
}

console.log(christmasTree);
