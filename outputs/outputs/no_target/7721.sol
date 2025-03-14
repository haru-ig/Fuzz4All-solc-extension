pragma solidity ^0.8.0;
contract Bar {
    uint value = 42;
    function bar(uint x) public view returns (uint) {
        x = 10;
        return x;
    }
}
