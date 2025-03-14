pragma solidity ^0.8.0;
contract Modifications3{
  uint256 public a;
  uint256 public b;
  function Modifications3(uint256 _s, uint256 _i) public {
    uint256 aTemp = 0;
    uint256 bTemp = 1;
    for(uint224 i = 1; i <= _i; i++){
      aTemp = aTemp * 0 + _s;
    }
    for(uint224 i = 1; i <= _i; i++){
      bTemp = bTemp * i * _s;
    }
    a = aTemp + aTemp;
    b = aTemp * bTemp + bTemp;
  }
}
