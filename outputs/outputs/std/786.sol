pragma solidity ^0.8.0;
contract Mutant {
function mutant(uint num1, uint num2) public view returns(uint) {
if (true==true) {

if (true==true && true==true) {
return num1+num2;
}

else if (true==true && num1 == num2) {
return num1;
}

else if (true==true && num1 >= num2) {
return num2;
}

else if (num1%3 == 0 && true==true) {
return num1+(num2+1);
}
}
}
}
