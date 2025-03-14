pragma solidity ^0.8.0;
contract C6 {
   function mutate(address _addr) public pure {
      uint8 _x = 1;
   }
   function modint(address _addr) public pure returns (address) {
      uint8 _x = 1;
         if (_addr < 0) {
        _addr = 0x0;
        _x = _x + 2;
       } else
        _x = _x + 2;
    return _addr - 1;
   }
}
