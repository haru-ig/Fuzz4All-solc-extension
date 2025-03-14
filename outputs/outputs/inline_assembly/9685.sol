pragma solidity ^0.8.0;
contract AdvancedYulContract {
 uint internal contractCounter;
 uint constant c = 50;
     function subtract(uint x) internal pure returns (uint) {
          if(x < 100) {
              return c* 2 + x*x - x*9*10*10;
          } else {
              return c*(x + c * 4) - c * 2;
          }
     }
     function power(uint x) internal pure returns (uint) {
         if(x < 100) {
             return 4*c*2*2*2*2*2*2;
         } else if(x < 10 * 10 * 10 * 10 * 10 * 10 * 10 * 10) {
             return 1000* c*2*2*2*2*5*2*2;
         } else {
             return (18* c + x*2)+ (x + c*5)* 3;
         }
    }
     function addBy(uint x) internal {
         x = c* 10 *2 * 10* 10* 2* 1 * x + 2 ;
         contractCounter += x* 100;
    }
}
