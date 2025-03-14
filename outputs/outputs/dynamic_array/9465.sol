pragma solidity ^0.8.0;
contract Arrays {
    uint[] public dynamicArray;
    function test() public {
        dynamicArray = new uint[](100);
    }
}
