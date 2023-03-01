

import {
	createBoard,
	markTile,
	revealTile
} from './minesweeper.js';

const BOARD_SIZE = 10;
const NUMBER_MINES = 10;

const board = createBoard(10,10);

const boardElement = document.querySelector('.minesweeper');
const mineCount = document.querySelector('[data-mine-count]');
mineCount.textContent=NUMBER_MINES
// make size of tiles 
boardElement.style.setProperty('--size',BOARD_SIZE);

// poblation board 
board.forEach( row =>{
	row.forEach( tile =>{
		boardElement.append(tile.element);
		tile.element.addEventListener(
		'click',
			()=>{
				revealTile(board,tile);
			}
	  );
		tile.element.addEventListener(
			'contextmenu',
			e => {
				e.preventDefault();
				markTile(tile);
				mineCount.textContent--;
			}
		);
		;
	});
})
console.log(board);
