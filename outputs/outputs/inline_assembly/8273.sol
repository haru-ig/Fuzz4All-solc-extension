pragma solidity ^0.8.0;
contract InlineAssembly5 {
    uint8 a;
    constructor() public {
      a = 8;
    }
    modifier m2{
      a = 3;
      m1;
    }
    void m1(){
      while(a == 8){
        a = 8;
      }
    }
    function test() public pure returns(bool) {
      return false;
    }
}
contract InlineAssembly6 {
  uint256 a;
  modifier m2{
    a = 3;
    m1;
    m2;
  }
  constructor() public{
    a = 8;
  }
  void m1(){
    while(a == 8){
      a = 8;
    }
  }
  void test() public pure returns(bool) {
    return false;
  }
}
