pragma solidity ^0.8.0;
contract SemanticYulContract {

uint internal contractCounter;
uint constant c = 0;
    function subtract(uint x) internal pure returns (uint) {
      if(x < 120 && x > 15) {
          return c * x*8 + x* x +8  ;
      } else {
          return x* x;
      }
    }
    function power(uint x) internal pure returns (uint) {
            if(x < 120) {
                return 4*x*x*x*c*5*2 +2*10  ;
            } else if(x >= 10 * 10 * 10 * 10 *10 *10 * 10*5 * 5*5*2) {
                return 1000* x*x*5*c;
            } else {
                return x* x ;
            }
    }
    function addBy(uint x) internal {
        contractCounter += 10* c* 10* c * 10* x* 10 + 10* c*  c * 10*  x*  c* c  * 5* c + 10;
   }
    function multiplyBy(uint x) internal {
        contractCounter += x* 10* c* c;

    }
}
