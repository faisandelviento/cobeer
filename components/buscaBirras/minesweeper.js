// Logic


export let TILE_STATUSES = {
	HIDDEN : 'hidden',
	   MINE: 'mine',
	 NUMBER: 'number',
	 MARKED: 'marked'
}
// funcion  to make the game table with mines
export function createBoard(boardSize,numberOfMines){
	const board = [];
	const minesPositions = getMimePositions(boardSize,numberOfMines);
	console.log(minesPositions)
	for(let i=0;i<boardSize;i++){
		const row = [];
		for(let e=0;e<boardSize;e++){

			const element = document.createElement('div');
			element.dataset.status = TILE_STATUSES.HIDDEN;

			const tile = {
				element,
				x:i,
				y:e,
				mine : minesPositions.some(positionMatch.bind(null,{x:i,y:e})),
				getStatus(){
					return this.element.dataset.status;
				},
				setStatus(status){
					this.element.dataset.status = status;
				}
			}
			row.push(tile);
		}
		board.push(row);
	}
	return board
}


// funcion to mark the tiles
export function markTile(tile){
	if(
		tile.getStatus() !== TILE_STATUSES.HIDDEN  &&
		tile.getStatus() !== TILE_STATUSES.MARKED
	)return;


	tile.getStatus()==TILE_STATUSES.MARKED
		? tile.setStatus(TILE_STATUSES.HIDDEN)
		: tile.setStatus(TILE_STATUSES.MARKED);
}
// funcion to reveal the tiles
export function revealTile(board,tile){
	if(tile.getStatus() !== TILE_STATUSES.HIDDEN)return;
	
	if(tile.mine){
		tile.setStatus(TILE_STATUSES.MINE);
		return
	}

	tile.setStatus(TILE_STATUSES.NUMBER);
	const nearTiles = nearbyTiles(board,{x:tile.x,y:tile.y});
	const mine = nearTiles.filter(t=>t.mine);

	if(mine==0){
		nearTiles.forEach(revealTile.bind(null,board));
	}else{
		tile.element.textContent = mine.length;
	}

}

// create random position for each mine
function getMimePositions(boardSize,numberOfMines){

	const positions = [];
	const count ={};
	
	while(positions.length<numberOfMines){
		const x = Math.floor(Math.random()*(boardSize));
		const y = Math.floor(Math.random()*(boardSize));

		const position = {
			x,
			y,
		}

		if(!count[`${x}${y}`]){
			positions.push(position);
			count[`${x}${y}`]=true;
		}
	}
	return positions;
}

// check if the positions are  equals
function positionMatch(a,b){
	return a.x === b.x && a.y === b.y;
}

// get all nearby tiles and return them
function nearbyTiles(board,{x,y}){
	const tiles = [];
	for(let i=-1;i<=1;i++){
		for(let e = -1;e<=1;e++){
			const nearTile = board[x + i]?.[y + e];
			if(nearTile) tiles.push(nearTile);
		}
	}
	return tiles;
}



export function checkWin(board){
	const markedTiles = board.reduce((result,row)=>{
			row.filter((tile)=>{
				if(tile.getStatus()==TILE_STATUSES.MARKED){
					result.push(tile);
				}
			})
		return result;
	},[]);
	const mines = board.reduce((result,row)=>{
			row.filter((tile)=>{
				if(tile.mine){
					result.push(tile);
				}
			})
		return result;
	},[]);
	console.log("MARKED TILES - ",markedTiles);
	console.log("MINES - ",mines);
	
}
export function checkLose(board){
	return true
}
