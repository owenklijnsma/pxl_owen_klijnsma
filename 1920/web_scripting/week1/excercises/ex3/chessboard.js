//Chessboard A
let size = 8;
let rowNr = 0;

for (let i = 0; i < size; i++) {
	let row = '';
	if (rowNr % 2 !== 0) {
		for (let j = 0; j < size / 2; j++) {
			row += '# ';
		}
	} else {
		for (let j = 0; j < size / 2; j++) {
			row += ' #';
		}
	}
	rowNr++;
	console.log(row);
}
