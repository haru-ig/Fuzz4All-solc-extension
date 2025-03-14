pragma solidity ^0.8.0;
contract DataConstructorExample {
 uint public immutable num;
 constructor() {
  num = 1;
 }

  function fallback() public pure { revert(); }

}
