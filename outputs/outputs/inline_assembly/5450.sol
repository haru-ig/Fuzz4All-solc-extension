pragma solidity ^0.8.0;
contract MutateWipeBc6 {
    uint public rBc6;
    function _next() public {
        uint _rBc6 = rBc6;
        for (uint x; x < 20000; x++) {
          if (_rBc6 > 500) {
            break;
          } else {
            _rBc6 += 32;
          }
          uint _dummy;
        }
    }
}
