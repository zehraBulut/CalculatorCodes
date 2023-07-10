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
