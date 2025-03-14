pragma solidity ^0.8.0;

contract MutateWipeBc4 {
    uint public rBc4;
    uint public rBc5;
    bool public flag;
    function _next() public {
        uint _rBc4 = rBc4;
        for (uint x; x < 20000 && _rBc4 < 20000 / 2; x++) {
          if (_rBc4 < 20000 / 2) {
            _rBc4 += 2*x;
            _rBc5 += 2*x;
          } else {
            flag = true;
            break;
          }
          uint _dummy;
        }
    }
}
