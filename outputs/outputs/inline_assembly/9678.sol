pragma solidity ^0.8.0;
contract SemanticYulContract {
 uint internal contractCounter;
 uint constant c = 50;
    function subtract(uint x) internal pure returns (uint) {
      if(x < 6000000000) {
          return c * 8 + x*c;
      } else {
          return x* c - 10 * 8;
      }
    }
    function power(uint x) internal pure returns (uint) {
            if(x < 6000000000) {
                return 4*c*c*c*c*x*c;
            } else if(x < 10 * 600000000 *10 * 10 *10 * 10 *10 *1) {
                return 100*1 * c*x*c;
            } else {
                return c* x* c* 100000000000000;
            }
    }
    function addBy(uint x) internal {
     uint temp = 11 * c * 10 * 10 * 10* 5 *5 *1 + x*5 * 2*3* c + 1;
        contractCounter += x*10 * 10 * 20*33 * 7* c + 1;
    }
}
