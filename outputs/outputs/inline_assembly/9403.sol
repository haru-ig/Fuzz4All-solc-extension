pragma solidity ^0.8.0;
contract M {
  constructor(int _i) public {
    i = _i ;
  }
  int i;
  mapping(address => int) public map;
}

contract C1 is M {

}

contract C2 is M {
  bool x;
  uint a;
  constructor(int _i) public M(_i){
 a = 8;
 x = true;
  }

 function getA() public returns(uint, bool) {
  return (a,x);

}
}
