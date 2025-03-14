pragma solidity ^0.8.0;
contract Comp34{
uint32 a;
constructor(uint32 _initialAmount) {
    a = _initialAmount;
}
function add(uint b) public{
  a += b;
}
    function subtract(uint _b) public{
      a -= _b;
    }
    function multiply(uint _b) public{
      a *= _b;
    }
    function divide(uint x) public{
      if(x == 0){
        a = 0;
      }
      else{
        a /= x;
      }
    }
}

pragma solidity ^0.8.0;
contract Comp35{
uint a;
uint b;
uint c;
constructor(uint _a, uint _b) {
    a = _a;
    b = _b;
    c = a + b;
}
function add(uint _b) public{
    c = c + _b;
}
    function subtract(uint _b) public{
        c = c + _b;
    }
}

pragma solidity ^0.8.0;
contract Comp36{
uint a = 420;
uint b = 20;
uint c = a / b;
constructor(uint _a, uint _b) {
    a = _a;
    b = _b;
    c = a / b;
}
function add(uint _b) public{
    c = c + _b;
}
    function subtract(uint _b) public{
        c = c + _b;
    }
}

pragma solidity ^0.8.0;
contract Comp37{
uint a = 420;
