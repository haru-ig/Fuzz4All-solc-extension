pragma solidity ^0.8.0;
contract SemanticSimilar7{
  enum E1{A, B, C}
  function f() public view returns(E1) {
    E1 enumVal = E1.B;


    return enumVal;
  }
  function g() public view returns(E1){
    emit Emitted2();
    return E1.B;
  }
  event Emitted2();
}
