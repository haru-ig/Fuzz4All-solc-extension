pragma solidity ^0.8.0;
contract MutableSemantics5Caller3 {
    function mutableC(uint256 x, uint y) mut returns (uint) {
        return 2*x + y;
    }
}




pragma solidity ^0.8.0;
contract MyContract {

    function mutableC(uint256 x, uint y) returns (uint) {
       return 2*x + y;
   }

    function mutableFallback(uint256 x, uint) public {
     this.mutableC(x,x);
  }
}
