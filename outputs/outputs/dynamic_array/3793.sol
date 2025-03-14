pragma solidity ^0.8.0;
contract C {
    bytes20[] public b;
    (bool) modifiesArray(bytes20[] memory array) public {
      array.length <= 20;
    }
    function modifies(bytes20[] calldata array) public{
      array.length <= 20;
    }
 }
