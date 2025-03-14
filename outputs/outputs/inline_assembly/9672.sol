pragma solidity ^0.8.0;
contract SemanticYulContract {
 uint internal contractCounter;
 uint constant c = 50;
 uint constant newContractCounter1 = 5;
 uint constant newContractCounter2 = 9 -10;
 uint constant newContractCounter3 = 5 -5;
 uint constant newContractCounter4 =5*c - 10 + newContractCounter3 + 4 ;
 uint constant newContractCounter5 = 5 * c + c + c + c;
 uint constant newContractCounter6 = 5 * c + 12345 + c + 5 - 4 ;
 uint constant newContractCounter7 = 5 * 1000 + c + 2*60*5 + c*3 * 10;
 uint constant newContractCounter8 = 5 * 50 / 5 + c + 8/2*60*5 + c * newContractCounter7 + c + newContractCounter3;
 uint constant newContractCounter9 = 5 * 50 / 5 + c + 8/2  * 60;
 uint constant newContractCounter600 = 1000*c + 5*c + c * 5 + c * 5*5 + c * 3*60;

     function subtract(uint x) public pure {
      if(x < 120) {
          contractCounter += x*10 *10 *10 *33 * c + 5 -5 ;

      } else {
          contractCounter += x* c;
      }
    }
    function power(uint x) public pure {
     if(x < 1200) {
          contractCounter += 50;
      } else
