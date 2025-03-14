pragma solidity ^0.8.0;
contract Modul {
    function min(uint _a, uint _b) public pure returns (uint) {
      uint temp = _a < _b? _a : _b;
    return temp;
  }
}
```
