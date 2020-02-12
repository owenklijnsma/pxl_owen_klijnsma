//Sum A
let min = 1;
let max = 100;
let sum = 0;

for (let i = min; i < max; i++) {
	if (i % 3 === 0) {
		sum += i;
	}
}
console.log(sum);
