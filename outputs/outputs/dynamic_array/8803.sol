pragma solidity ^0.8.0;
contract A {
  uint256[] public array;
  function A() {
    array.push(uint256(3));
    array.push(uint256(2));
    array.push(uint256(8));
  }
}
pragma solidity ^0.8.0;
contract B is A {}
