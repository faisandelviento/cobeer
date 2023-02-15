// Logic


const TILE_STATUSES = {
	HIDDEN : 'hidden',
	   MINE: 'mine',
	 NUMBER: 'number',
	 MARKED: 'marked'
}

export function createBoard(boardSize,numberOfMines){
	const board = [];
	for(let i=0;i<boardSize;i++){
		const row = [];
		for(let e=0;e<boardSize;e++){

			const element = document.createElement('div');
			element.dataset.status = TILE_STATUSES.HIDDEN;

			const tile = {
				element,
				x:i,
				y:e,
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



export function markTile(tile){
	tile.getStatus()==TILE_STATUSES.MARKED
		? tile.setStatus(TILE_STATUSES.HIDDEN)
		: tile.setStatus(TILE_STATUSES.MARKED);
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



