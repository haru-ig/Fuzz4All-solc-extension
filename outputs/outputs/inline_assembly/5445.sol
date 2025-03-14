pragma solidity ^0.8.0;
interface MutateBc5Interface {
  function _next() external;
}
contract MutateBc8 {
    uint public rBc8;
    function _next() public {
        uint _rBc5 = rBc8;
        uint _rBc8 = rBc8;
        for (uint x; x < 20000; x++) {
          if (_rBc8 < 20000 / 2) {
             uint _rBc8Temp = x * _rBc5;
             _rBc8Temp += _rBc8;
             _rBc8 = _rBc8Temp;
          } else {
            break;
          }
        }
    }
}
