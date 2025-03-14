pragma solidity ^0.8.0;
contract Test {
    uint[100] test = new uint[](arraySize);
    function f() public payable {
        test[1] = 1;
    }
}
