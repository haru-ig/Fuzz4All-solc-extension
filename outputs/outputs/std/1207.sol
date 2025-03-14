pragma solidity ^0.8.0;
contract B6 is B5 {
   function mutate(int _int) public pure returns (int) {
      require(_int!= 100000000);
      uint16 _x = 1;
   }
   function modint(int _int) public pure returns (int) {
      uint16 _x = 1;
         if (_int < 0) {
        _int = 0;
        _x = _x + 2;
       } else
        _x = _x + 2;
    return _int - 1;
   }
}
