pragma solidity ^0.8.0;
contract MutateWipeBc6 {
    uint public rBc6;
    function _next() public {
      for (uint x; x < 20000; x++) {
       if (rBc6 > 500000) {
        break;
      } else {
        rBc6 = rBc6 + 32;
      }
      uint _dummy;
    }
}
