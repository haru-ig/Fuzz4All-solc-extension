pragma solidity ^0.8.0;
contract ArraysMutated {
    bytes32 private immutable symbol_ = "ARRAY_MUT";
    bytes32 private immutable name_ = "NAME";
    bytes32 private immutable decimals_ = "ARRAY_DECIMALS";
    uint public constant N = 31;
    uint[] public array;
    uint public testArray2;
}
