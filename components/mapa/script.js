
let area = document.querySelectorAll('area');

console.log(area);

area.forEach((element)=>{
	console.log("Element: ",element);
	console.log("Title: ",element.title);
	let id = element.title;
	console.log(document.getElementById(`${id}`));
	element.onmouseover=()=>{
		document.getElementById(`${id}`).style.transition="all 1s";
		document.getElementById(`${id}`).style.opacity="1";
		//document.getElementById(`${id}`).style.display="block";
	};
	element.onmouseout=()=>{
		document.getElementById(`${id}`).style.transition="all 1s";
		document.getElementById(`${id}`).style.opacity="0";
	};
});

