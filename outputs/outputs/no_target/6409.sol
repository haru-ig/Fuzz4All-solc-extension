pragma solidity ^0.8.0;
contract modifiedBC {
  function f(uint8 a) public returns (uint256) {
    if( a == 0) {
      a = 4;
    } else {
      a = 5;
    }
    return f(a);
  }
}

pragma solidity ^0.8.0;
contract modifiesB is modifiedB {
  function myCall(uint8 a) public view returns (uint256){
    a % 2;
    return 1 % 2;
  }
}
contract fuz {
  uint8 a;
  uint8 b;
  address contractModifiesB;
  constructor(){
    contractModifiesB = address(new modifiesB());
    b = 2;
    a = 1;
  }
  function modifiesB_call(uint8 _a) public returns (uint256) {
    contractModifiesB.myCall(a);
    return 1 % 2;
  }
  function modifiesB_call2(uint8 _a) public returns (uint256) {
    return a;
  }
  function modifiesBCall(uint8 _a) public returns (uint256) {
    return f(a);
  }
  function f(uint8 _b) public returns (uint256) {
    a = _b;
    return 1 % 2;
  }
  function f2(uint8 _b) public{
    a = _b;
  }
}
