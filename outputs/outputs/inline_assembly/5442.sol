pragma solidity ^0.8.0;
contract MutateLc3 {
    uint _rLc3;
    function _next() public {
        uint _rLc3;
        for (uint x; x < 20000; x++) {
          if (_rLc3 < 20000 / 2) {
            _rLc3 += x;
          } else { break; }
        }
    }
}
