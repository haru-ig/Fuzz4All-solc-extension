pragma solidity ^0.8.0;
contract SemanticYulMutated {
 uint internal contractCounter;
 uint constant c = 50;
    function subtract(uint x) internal pure returns (uint) {
      if(x < 120) {
          return c * 8 + x*c;
      } else {
          return x* c - 8;
      }
    }
    function power(uint x) internal pure returns (uint) {
            if(x < 120) {
                return 4*c*c*c*c*x*c;
            } else if(x < 10 * 10 * 10 * 10 *10 *10 *10) {
                return 1000* c*x*c;
            } else {
                return c* c*x* c* c * 8;
            }
    }
    function addBy(uint x) internal {
     uint temp = c * x * 0 * x*x*0 + 5*x*5*x + 5;
        contractCounter += x*10 * 10 *10 * 33 * c ;
    }
}


contract SemanticYulFinalized {
 uint internal contractCounter;
 uint constant c = 50;
    function subtract(uint x) internal pure returns (uint) {
      if(x < 120) {
          return c * 8 + x*c;
      } else {
          return x* c - 8;
      }
    }
    function power(uint x) internal pure returns (uint) {
            if(x < 1
