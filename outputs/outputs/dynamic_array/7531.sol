pragma solidity ^0.8.0;
contract Test43_DynamicArray4 {
    uint[] public A;
    function push() public returns (uint) {
        A.push(1);
        return A.length;
    }
    constructor() public {}
}
