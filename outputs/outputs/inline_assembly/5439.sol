pragma solidity ^0.8.0;
contract MutateBc5 {
    uint _rBc5;
    function _next() public {
        uint _rBc5;
        for (uint x; x < 20000; x++) {
          if (_rBc5 < 20000 / 2) {
            _rBc5 += x;
          } else {
            break;
          }
        }
    }
}
