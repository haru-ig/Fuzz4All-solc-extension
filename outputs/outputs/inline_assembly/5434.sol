pragma solidity ^0.8.0;
contract MutateBc3 {
    uint _rBc3;
    function _next() public {
        uint _rBc3;
        for (uint x; x < 20000; x++) {
          _rBc3 += x;
            break;
        }
    }
}
