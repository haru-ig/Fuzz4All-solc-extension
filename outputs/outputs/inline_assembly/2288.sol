pragma solidity ^0.8.0;
contract Example {
  event Log1(uint i);
  event Log2(uint i);
  function someFunction(uint i) public {

    emit Log1(i);
    emit Log2(i);
  }
}
