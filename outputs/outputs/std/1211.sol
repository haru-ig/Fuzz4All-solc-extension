pragma solidity ^0.8.0;
contract C6 {
  uint8 a;
   function a()public pure returns(string memory){
     uint8 __x = 1;
      for(uint8 _i ;_i <100000; _i++){
       uint8 __y = _i;
       a = _y;
      }
    return a;
  }
}
