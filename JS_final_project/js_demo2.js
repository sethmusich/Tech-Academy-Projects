function getReceipt() {
	// This initializes our string so it can get passed from  
	// function to function, growing line by line into a full receipt
	var text1 = "<h3>You Ordered:</h3>";
	var runningTotal = 0;
	var sizeTotal = 0;
	var sizeArray = document.getElementsByClassName("size");
	for (var i = 0; i < sizeArray.length; i++) {
		if (sizeArray[i].checked) {
			var selectedSize = sizeArray[i].value;
			text1 = text1+selectedSize+"<br>";
		}
	}
	if (selectedSize === "Personal Pizza") {
		sizeTotal = 6;
	} else if (selectedSize === "Medium Pizza") {
		sizeTotal = 10;
	} else if (selectedSize === "Large Pizza") {
		sizeTotal = 14;
	} else if (selectedSize === "Extra Large Pizza") {
		sizeTotal = 16;
	}
	runningTotal = sizeTotal;
	console.log(selectedSize+" = $"+sizeTotal+".00");
	console.log("size text1: "+text1);
	console.log("subtotal: $"+runningTotal+".00");
	getMeat(runningTotal,text1); // All three of these variables will be passed on to each function
};
		







function getMeat(runningTotal,text1) {
	var meatTotal = 0;
	var selectedMeat = [];
	var meatArray = document.getElementsByClassName("meats");
	for (var j = 0; j < meatArray.length; j++) {
		if (meatArray[j].checked) {
			selectedMeat.push(meatArray[j].value);
			console.log("selected meat item: ("+meatArray[j].value+")");
			text1 = text1+meatArray[j].value+"<br>";
		}
	}
	var meatCount = selectedMeat.length;
	if (meatCount > 1) {
		meatTotal = (meatCount - 1);
	} else {
		meatTotal = 0;
	}
	runningTotal = (runningTotal + meatTotal);
	console.log("total selected meat items: "+meatCount);
	console.log(meatCount+" meat - 1 free meat = "+"$"+meatTotal+".00");
	console.log("meat text1: "+text1);
	console.log("Purchase Total: "+"$"+runningTotal+".00");
	document.getElementById("showText").innerHTML=text1;
	document.getElementById("totalPrice").innerHTML = "</h3>Total: <strong>$"+runningTotal+".00"+"</strong></h3>";
    getCheese(runningTotal,text1)
};		
		





function getCheese(runningTotal,text1) {
	var cheeseTotal = 0;
	var cheeseArray = document.getElementsByClassName("cheese");
    for (var c = 0; c < cheeseArray.length; c++) {
		if (cheeseArray[c].checked) {
            var selectedCheese = cheeseArray[c].value;
			text1 = text1+selectedCheese+"<br>";
        
	}
}
    if (selectedCheese === "Extra Cheese") {
		cheeseTotal = 3;}
   /* else if (selectedCheese === "No Cheese")
        cheeseTotal = 0;
    else if (selectedCheese === "Regular")
        cheeseTotal = 0;    
        
	} */
    
	runningTotal = (runningTotal + cheeseTotal);
	console.log("total selected cheese items: "+cheeseTotal);
	console.log("cheese text1: "+text1);
	console.log("Purchase Total: "+"$"+runningTotal+".00");
	document.getElementById("showText").innerHTML=text1;
	document.getElementById("totalPrice").innerHTML = "</h3>Total: <strong>$"+runningTotal+".00"+"</strong></h3>";
    getCrust(runningTotal,text1)
    
};




function getCrust(runningTotal,text1) {
	var crustTotal = 0;
	var crustArray = document.getElementsByClassName("crust");
    for (var r = 0; r < crustArray.length; r++) {
		if (crustArray[r].checked) {
            var selectedCrust = crustArray[r].value;
			text1 = text1+selectedCrust+"<br>";
        
	}
}
    if (selectedCrust === "Cheese Stuffed Crust") {
		crustTotal = 3;}
   /* else if (selectedCrust === "Plain Crust")
        crustTotal = 0;
    else if (selectedCrust === "Garlic Butter Crust")
        crustTotal = 0;  
    else if (selectedCrust === "Spicy Crust")
        crustTotal = 0;
    else if (selectedCrust === "House Special Crust")
        crustTotal = 0;  
        
	} */
    
	runningTotal = (runningTotal + crustTotal);
	console.log("total selected crust items: "+crustTotal);
	console.log("crust text1: "+text1);
	console.log("Purchase Total: "+"$"+runningTotal+".00");
	document.getElementById("showText").innerHTML=text1;
	document.getElementById("totalPrice").innerHTML = "</h3>Total: <strong>$"+runningTotal+".00"+"</strong></h3>";
    getSauce(runningTotal,text1)
    
};




function getSauce(runningTotal,text1) {
	var sauceTotal = 0;
	var sauceArray = document.getElementsByClassName("sauce");
    for (var s = 0; s < sauceArray.length; s++) {
		if (sauceArray[s].checked) {
            var selectedSauce = sauceArray[s].value;
			text1 = text1+selectedSauce+"<br>";
        
	}
}
    if (selectedSauce === "Marinara Sauce") {
		crustTotal = 0;}
   /* else if (selectedSauce === "White Sauce")
        sauceTotal = 0;
      else if (selectedSauce === "Barbeque Sauce")
        sauceTotal = 0;
      else if (selectedSauce === "No Sauce")
        sauceTotal = 0;
      
    
        
	} */
    
	runningTotal = (runningTotal + sauceTotal);
	console.log("total selected sauce items: "+sauceTotal);
	console.log("sauce text1: "+text1);
	console.log("Purchase Total: "+"$"+runningTotal+".00");
	document.getElementById("showText").innerHTML=text1;
	document.getElementById("totalPrice").innerHTML = "</h3>Total: <strong>$"+runningTotal+".00"+"</strong></h3>";
    getVeggies(runningTotal,text1)
    
};




function getVeggies(runningTotal,text1) {
	var veggiesTotal = 0;
	var selectedVeggies = [];
	var veggiesArray = document.getElementsByClassName("veggies");
	for (var v = 0; v < veggiesArray.length; v++) {
		if (veggiesArray[v].checked) {
			selectedVeggies.push(veggiesArray[v].value);
			console.log("selected veggies item: ("+veggiesArray[v].value+")");
			text1 = text1+veggiesArray[v].value+"<br>";
		}
	}
	var veggiesCount = selectedVeggies.length;
	if (veggiesCount > 1) {
		veggiesTotal = (veggiesCount - 1);
	} else {
		veggiesTotal = 0;
	}
	runningTotal = (runningTotal + veggiesTotal);
	console.log("total selected veggies items: "+veggiesCount);
	console.log(veggiesCount+" veggies - 1 free veggies = "+"$"+veggiesTotal+".00");
	console.log("veggies text1: "+text1);
	console.log("Purchase Total: "+"$"+runningTotal+".00");
	document.getElementById("showText").innerHTML=text1;
	document.getElementById("totalPrice").innerHTML = "</h3>Total: <strong>$"+runningTotal+".00"+"</strong></h3>";
};		

