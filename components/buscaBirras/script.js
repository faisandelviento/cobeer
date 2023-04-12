

import {
	createBoard,
	markTile,
	revealTile,
	TILE_STATUSES,
	checkWin,
	checkLose
} from './minesweeper.js';

const BOARD_SIZE = 10;
const NUMBER_MINES = 10;

const board = createBoard(10,10);

const boardElement = document.querySelector('.minesweeper');
const mineCountElement = document.querySelector('[data-mine-count]');
mineCountElement.textContent= NUMBER_MINES;
const minesCountMarked = {};

const endMessage = document.querySelector('[end-message]');

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
				checkGameEnd();
			}
	  );
		tile.element.addEventListener(
			'contextmenu',
			e => {
				e.preventDefault();
				markTile(tile);
				minesCount(tile,minesCountMarked);
			}
		);
		;
	});
})

function minesCount(tile,minesCountMarked){
	if(minesCountMarked[`${tile.x}${tile.y}`]){
		delete minesCountMarked[`${tile.x}${tile.y}`];
	}else{
		minesCountMarked[`${tile.x}${tile.y}`]=true;
	}
	mineCountElement.textContent = 
		NUMBER_MINES - Object.keys(minesCountMarked).length < 0
			? 0
			: NUMBER_MINES - Object.keys(minesCountMarked).length;
}

function checkGameEnd(){
	const win = checkWin(board);
	const lose = checkLose(board);
	
	if(win || lose){
		boardElement.addEventListener('click',stopProp,{capture:true});
		boardElement.addEventListener('contextmenu',stopProp,{capture:true});
	}

	if(win){
		endMessage.textContent="YOU WIN";
	}
	if(lose){
		endMessage.textContent="YOU LOSE";
		board.forEach(row=>{
			row.forEach(tile=>{
				if(tile.mine)revealTile(board,tile);
			})
		})
	}

}


function stopProp(e){
	e.stopImmediatePropagation();
}


