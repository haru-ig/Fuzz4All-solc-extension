pragma solidity ^0.8.0;

contract MutatedDynamicArrays4 {
    function mutant(var _arr : address[](2)) public pure{
        _arr = new address[](2);

    }
}
