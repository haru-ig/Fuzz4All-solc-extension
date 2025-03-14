pragma solidity ^0.8.0;
contract MutateBc4 {
    uint _x = 1;
    function _next() public view returns (uint _rBc3) {
    uint _rBc3;
    for (uint x; x < 20000; x++) {
      _rBc3 += _x;
      _x += 1;
    }
    }
}
