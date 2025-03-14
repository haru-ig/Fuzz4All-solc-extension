pragma solidity ^0.8.0;
contract SemanticIndependenceAndDynamicArray {
    function add(in uint[] memory array, in uint x) public {
        require(x < 5);
        accounts.push(array.length);
        array.push(x);
    }
}
