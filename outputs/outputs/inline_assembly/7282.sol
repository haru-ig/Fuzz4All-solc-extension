pragma solidity ^0.8.0;
contract AnotherContract {
  uint public constant newV = 9;
  function anotherFuction1(uint x) public pure {
    return x * newV;
  }
  function anotherFunction2(uint x) public pure {
    return x + newV;
  }
  uint private constant newV2 = newV * 2;
}
   function anotherFunction3() public pure {
     return newV2;
   }
}
