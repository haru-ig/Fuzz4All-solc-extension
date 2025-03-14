pragma solidity ^0.8.0;
contract Modifications3 {
    uint256 public a;
    uint256 public b;
    constructor (uint256 _s, uint256 _i) public {
        uint256 x = _s * _i;
        a = x + _s;
        b = x * _i;
    }
}

pragma solidity ^0.8.0;
contract Modifications3 {
    uint256 public a;
    uint256 public b;
    uint8 logFlag;

    constructor(uint256 _s, uint256 _i) public {
      doSomething(logFlag, _s * _i);
    }
    function doSomething(uint8 _logFlag, uint _s) public {
      uint256 x;
      if (_logFlag>0){
        x = _s + _s;
      } else {
        x = _s / _s;
      }
      a = x + _s;
      b = x * _i;
    }
}
