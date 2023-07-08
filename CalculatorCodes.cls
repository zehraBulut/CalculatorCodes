let input = document.getElementById("input"),      //input element
    operators = document.querySelectorAll(".operators div"), //all div element in operators class 
  
  //All div element in numbers class, except the one with clear id 
    numbers = document.querySelectorAll(".numbers div:not(#clear)"), //numbers button 
    result = document.getElementById("result"), //equal button
    clear = document.getElementById("clear"); //clear button

//Create a vraible to keep eye on result, when equal button been clicked turn that variable to true
let resultDisplayed = false; 

//Clear the input when the clear button is clicked 
clear.addEventListener("click", ()=>{
    input.innerHTML= '';
})
//Add eventListener to the operators button
operators.forEach(operator=>{
    opetator.addEventListener('click', ()=>{
        input.textContent+= `${operator.textContent}`;
    });

});
//innerHTML, textContent, innerText ==> Similar methods
//Add eventListener to the number buttons; 
numbers.forEach(number  => {
   
    number.addEventListener('click', ()=>{
        if(resultDisplayed){
            input.textContent= ''; 
            resultDisplayed = false; 
        }
        input.innerHTML +=number.textContent; 
        
    });
} ); 

//Perform the calculation when equals button is clickked 

result.addEventListener('click', ()=>{
    const expression = input.textContent; 
    try{
    

    //This will evaluate the expression in input will perform calsulation; 
        const calc = eval(expression);
        input.innerHTML = calc;
        resultDisplayed = true; 

    } catch(error){
        input.innerHTML = "Error"
    }
}); 




/* Another Way to make calculation operations: 
result.addEventListener('click', ()=>{
    const expression = input.textContent; 
    if(expression==''){
        input.innerHTML = "Please give some numbers"; 
    }
       

 //This will evaluate the expression in input will perform calsulation; 
        //const calc = eval(expression);
        //Instead of the above line of code we will check expression to perform calculation




        if(expression.indexOf('+')>0){
            let indexPlus = expression.indexOf('+'); 
            const parameters = expression.split('+'); 
            input.innerHTML = parseInt(parameters[0])+parseInt(parameters[1]); 
        }else if(expression.indexOf('-')>0){
            let indexPlus = expression.indexOf('-'); 
            const parameters = expression.split('-'); 
            input.innerHTML = parseInt(parameters[0]) - parseInt(parameters[1]); 

        }else if(expression.indexOf('*')>0){
            let indexPlus = expression.indexOf('*'); 
            const parameters = expression.split('*'); 
            input.innerHTML = parseInt(parameters[0]) * parseInt(parameters[1]); 
        }else if(expression.indexOf('/')>0){
            let indexPlus = expression.indexOf('/'); 
            const parameters = expression.split('/'); 
            input.innerHTML = parseInt(parameters[0]) / parseInt(parameters[1]); 
        }
        resultDisplayed = true;  
});      */

//***********************************************************************

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculator:</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>
    <div id="firstDiv">
        <h2>My First Calculator Project: </h2>
    </div>
    <div class="calculator">
        <div class="input" id="input">Input</div>
        <div class="buttons">
            <div class="operators">
                <div>+</div>
                <div>-</div>
                <div>*</div>
                <div>/</div>       </div>
            <div class="leftPanel">
                <div class="numbers">
                    <div>7</div>
                    <div>8</div>
                    <div>9</div>
                </div>
                <div class="numbers">
                    <div>4</div>
                    <div>5</div>
                    <div>6</div>
                </div>
                <div class="numbers">
                    <div>1</div>
                    <div>2</div>
                    <div>3</div>
                </div>
                <div class="numbers">
                    <div>0</div>
                    <div>.</div>
                    <div id="clear" class="claer">C</div>
                </div>
            </div>
            <div class="equal" id="result">=</div>
        </div>
    </div>
<script src="/script.js"></script>
</body>
</html>
body{
    width: 500px;
    margin: 5% auto;
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    letter-spacing: 5px;
    font-size: 1.8rem;
}
body{
    background-image: url(./download.jpeg);
}

#firstDiv{
    color: red;
}
.calculator{
    padding: 30px;
    box-shadow: 0px 1px 4px 0px rgba(0, 0, 0, 0.416);
    border-radius: 1px; 
    background-color: #f10e0e;
}
.input{
    border: 1px solid #d2d2d2;
    border-radius: 1px;
    height: 60px;
    padding-right: 15px;
    padding-top: 10px;
    text-align: right;
    margin-right: 6px;
    font-size: 2.5rem;
    overflow-x: auto;
    transition: all .2s ease-in-out;
    background-color: white;
    box-shadow: 2px 2px 4px 0px rgba(24, 23, 23, 0.416);
}
.input:hover{
    border: 2px solid #bbb;
    box-shadow: inset 0px 1px 4px 0px rgba(0, 0, 0, 0.350);
    cursor: copy;
}
.operators div{
    display: inline-block;
    border: 1px solid #bbb;
    border-radius: 1px;
    width: 70px;
    text-align: center;
    padding: 10px;
    margin: 20px 4px 10px 0;
    cursor: pointer;
    background-color: black;
    color: white;
    transition: border-color .2s ease-in-out, background-color .2s, box-shadow .2s;
}
.operators div:hover{
    border: 1px solid #f10e0e;
    box-shadow: inset 0px 1px 4px 0px rgba(6, 127, 234, 0.2);
    background-color: #0df009;
}
.operators div:active{
    font-weight: bold;
    color: red;
    background-color: blueviolet;
}
.leftPanel{
    display: inline-block;
}
.numbers div{
    display: inline-block;
    border: 1px solid #bbb;
    border-radius: 1px;
    width: 70px;
    text-align: center;
    padding: 10px;
    margin: 20px 4px 10px 0;
    cursor: pointer;
    background-color: black;
    color: white;
    transition: border-color .2s ease-in-out, background-color .2s, box-shadow .2s;
}
#clear{
    color:black;
    background-color: white;
}
#clear:active{
    color: red;
    background-color: blue;
}
.numbers div:hover{
    background-color:rgba(8, 246, 166, 0.926);
    box-shadow: inset 0px 1px 4px 0px rgba(6, 127, 234, 0.2);
    border-color: red;

}
.numbers div:active{
    font-weight: bold;
    color: red;
    background-color: white;
}
.equal{
    display: inline-block;
    border: 1px solid #bbb;
    border-radius: 1px;
    width: 18%;
    height: 80px;
    text-align: center;
    padding: 122px 10px;
    margin: 20px 4px 10px 0;
    cursor: pointer;
    background-color: black;
    color: white;
    transition: border-color .2s ease-in-out, background-color .2s, box-shadow .2s;
    vertical-align: top;
    background-color: green;
}
.equal:hover{
    background-color: blue;
    color: red;
    box-shadow:2px 2px 4px 0px #171515;
}
.equal:active{
    background-color: rgb(255, 0, 255);
    color:rgb(255, 239, 20);
    box-shadow:2px 2px 4px 0px #171515;
}







