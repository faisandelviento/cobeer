
let form = window.document.querySelectorAll(".form")[0].querySelector("form");

let input = form.querySelectorAll("input:not(input[type=submit])");

input.forEach((element)=>{
	element.onchange = preview; 
})
function preview(){
	let item = this;
	let preview = window.document.querySelectorAll(".preview")[0];
	// display preview
	// console.log(preview.style.display);

	let previewMain = window.document.querySelectorAll(".preview")[0].querySelectorAll(".main")[0];
	// console.log(previewMain)
		if(item.name==="titulo"){
			// crete a div > h1 to append in preview
			let div = window.document.createElement("div");
			let h1 = window.document.createElement("h1");
			h1.innerHTML = item.value;
			div.appendChild(h1)
			previewMain.appendChild(div);
		}
	}
