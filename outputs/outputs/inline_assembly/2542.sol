pragma solidity ^0.8.0;
contract Comp35{

  uint32 a;
  uint32 public constant b = 2;
  uint32 private constant c = 5;
  modifier privateModifier{
    a = 2*b;
    _;
  }
  modifier publicModifier(){
    a = 3*b;
    _;
  }
  modifier publicConstantModifier(uint256 _int){
    a = c + c2;
    _;
  }

uint32 c2;
constructor(uint32 _initialAmount) {
    a = _initialAmount;
    c2 = (c + b) + _initialAmount;
}
function add() public{
    a = a + c2;
}
    function subtract() public{
        a = a - c2;
    }
    function multiply() public{
        a = a * c2;
    }
}
