pragma solidity ^0.8.0;
contract MutateWipeBc5 {
    uint public rBc5;
    function _next() public {
        uint _rBc5 = rBc5;
        for (uint x; x < 20000; x++) {
          if (_rBc5 < 20000 / 2) {
            _rBc5 += 2*x;
          } else {
            break;
          }
          uint _dummy;
        }
    }
}
